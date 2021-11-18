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
insert into user values
    (1, 'mnodado', 'nodado'),
    (2, 'tchan', 'chan'),
    (3, 'adarian', 'darian'),
    (4, 'msingh', 'singh'),
    (5, 'asiaotong', 'siaotong'),
    (6, 'mdelosreyes', 'delosreyes'),
    (7, 'aestrella', 'estrella'),
    (8, 'aross', 'ross'),
    (9, 'sduong', 'sduong'),
    (10, 'flira', 'flira'),;

insert into board values
    (1, 'Engineering'),
    (2, 'Design'),
    (3, 'Directors'),
    (4, 'Logistics'),
    (5, 'Marketing');

insert into tasks VALUES
    ;

insert into boardusers values
-- bId, uId
    (1, 2),
    (1, 3),
    (1, 6),
    (1. 8),
-- Queries