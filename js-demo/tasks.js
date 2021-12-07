const sqlite3 = require('sqlite3')
const Promise = require('bluebird')


class Tasks {
    constructor(dbFilePath) {
        this.db = new sqlite3.Database(dbFilePath, (err) => {
            if (err) {
                console.log('Could not connect to database', err)
            } else {
                console.log('Connected to database')
            }
        })
    }

    all(sql, params = []) {
        return new Promise((resolve, reject) => {
            this.db.all(sql, params, (err, rows) => {
                if (err) {
                    console.log('Error running sql: ' + sql)
                    console.log(err)
                    reject(err)
                } else {
                    resolve(rows)
                }
            })
        })
    }

    allBoards() {
        return this.all(
            "SELECT Title FROM Board ORDER BY Title", [])
    }

    allTasksInAllBoards() {
        return this.all(
            "select BoardId, Title, DueDate, Details, Status " +
            "from Task " +
            "where BoardId = 1" +
            " UNION " +
            "select BoardId, Title, DueDate, Details, Status " +
            "from Task " +
            "where BoardId = 2" +
            " UNION " +
            "select BoardId, Title, DueDate, Details, Status " +
            "from Task " +
            "where BoardId = 3", [])
    }
    allTasksByBoard(_board) {
        return this.all(
            "select TaskId as id, Task.Title as title, Task.Status as status " +
            "from Task, Board " +
            "where Task.BoardId = Board.BoardId " + 
            "and Board.Title = ?", [_board])
    }

    newBoard(_title) {
        return this.all(
            "insert into Board(Title) values(?)", [_title]
    )}
}

module.exports = Tasks
