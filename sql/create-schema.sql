drop table User;
drop table BoardUsers;
drop table Board;
drop table Task;
drop table TaskAssignee;
drop table Assignee;
drop table Comment;
drop table Image;

-- Create Schema
CREATE TABLE User (
    UserId INTEGER primary key,
    Username varchar not null,
    Password varchar not null
);

CREATE TABLE BoardUsers (
    BoardId integer NOT NULL,
    UserId INTEGER NOT NULL
);

CREATE TABLE Board (
    BoardId INTEGER primary key,
    Title string NOT NULL
);

CREATE TABLE Task (
    TaskId INTEGER PRIMARY KEY,
    BoardId INTEGER NOT NULL,
    Title string,
    DueDate varchar,
    Details string,
    Image varbinary,
    Status char(15) DEFAULT 'TO DO'
);

CREATE TABLE TaskAssignee (
    TaskId INTEGER NOT NULL,
    AssigneeId INTEGER NOT NULL
);

CREATE TABLE Assignee (
    UserId INTEGER NOT NULL,
    Username varchar NOT NULL
);

CREATE TABLE Comment (
    TaskId INTEGER NOT NULL,
    UserId INTEGER NOT NULL,
    CommentId INTEGER PRIMARY KEY NOT NULL,
    Message string NOT NULL,
    Timestamp varchar NOT NULL
);

CREATE TABLE Image (
    TaskId INTEGER NOT NULL,
    UserId INTEGER NOT NULL,
    File varbinary NOT NULL
);
