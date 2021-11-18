.headers ON

-- Create Schema
CREATE TABLE User (
    UserId int,
    Username varchar,
    Password varchar,
);

CREATE TABLE BoardUsers (
    UserId int,
    BoardId int,
);

CREATE TABLE Board (
    BoardId int,
    Title string,
);

CREATE TABLE Task (
    TaskId int,
    BoardId int,
    DueDate varchar,
    Details string,
    CommentList string,
    Image varbinary,
);

CREATE TABLE TaskAssignee (
    TaskId int,
    AssigneeId int,
);

CREATE TABLE Assignee (
    UserId int,
    Username varchar,
);

CREATE TABLE Comment (
    TaskId int,
    UserId int,
    CommentId int,
    Message string,
    Timestamp varchar,
);

CREATE TABLE Image (
    TaskId int,
    UserId int,
    File varbinary,
);

-- Populate Tables

-- Queries