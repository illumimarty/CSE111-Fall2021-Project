// Create express app
var express = require("express")
var app = express()

const Tasks = require('./tasks')
var tasks = new Tasks('../task.sqlite')

// Server port
var HTTP_PORT = 8092

app.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
    res.setHeader('Access-Control-Allow-Credentials', true);

    next();
});

// Start server
app.listen(HTTP_PORT, () => {
    console.log("Server running on port %PORT%".replace("%PORT%", HTTP_PORT))
});

// Root endpoint
app.get("/", (req, res, next) => {
    res.json({ "message": "Ok" })
});

// Insert here other API endpoints
app.get("/boards", (req, res, next) => {
    tasks.allBoards()
        .then((boards) => {
            res.json({
                "message": "success",
                "data": boards
            })
        })
        .catch((err) => {
            res.status(400).json({ "error": err.message });
            return;
        })
});

app.get("/boards/:board", (req, res, next) => {
    if (req.params.board == "All") {
        tasks.allTasksInAllBoards(req.params.board)
            .then((board) => {
                res.json({
                    "message": `Tasks in ${req.params.board}`,
                    "data": board
                })
            })
            .catch((err) => {
                res.status(400).json({ "error": err.message });
                return;
            })
    }
    else {
        tasks.allTasksByBoard(req.params.board)
            .then((board) => {
                res.json({
                    "message": `Tasks in ${req.params.board}`,
                    "data": board
                })
            })
            .catch((err) => {
                res.status(400).json({ "error": err.message });
                return;
            })
    }
});

app.get("/allcomments", (req, res, next) => {
    tasks.allComments(req.params.allcomments)
        .then((allcomments) => {
            res.json({
                "message": `Tasks in ${req.params.allcomments}`,
                "data": allcomments
            })
        })
        .catch((err) => {
            res.status(400).json({ "error": err.message });
            return;
        })
});

// Default response for any other request
app.use(function (req, res) {
    res.status(404);
});
