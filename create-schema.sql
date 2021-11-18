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
    UserId int,
    Username varchar,
    Password varchar
);

CREATE TABLE BoardUsers (
    UserId int,
    BoardId int
);

CREATE TABLE Board (
    BoardId int,
    Title string
);

CREATE TABLE Task (
    TaskId int,
    BoardId int,
    Title string,
    DueDate varchar,
    Details string,
    Image varbinary,
    Status char(15)
);

CREATE TABLE TaskAssignee (
    TaskId int,
    AssigneeId int
);

CREATE TABLE Assignee (
    UserId int,
    Username varchar
);

CREATE TABLE Comment (
    TaskId int,
    UserId int,
    CommentId int,
    Message string,
    Timestamp varchar
);

CREATE TABLE Image (
    TaskId int,
    UserId int,
    File varbinary
);
