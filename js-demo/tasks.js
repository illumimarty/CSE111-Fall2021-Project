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

    allTasksInAllBoards () {
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
    allTasksInEngineering() {
        return this.all(
            "select Title, DueDate, Details, Status " +
            "from Task " +
            "where BoardId = 1", [])
    }
    allTasksInDesign() {
        return this.all(
            "select Title, DueDate, Details, Status " +
            "from Task " +
            "where BoardId = 2", [])
    }
    allTasksInDirectors() {
        return this.all(
            "select Title, DueDate, Details, Status " +
            "from Task " +
            "where BoardId = 3", [])
    }
}

module.exports = Tasks
