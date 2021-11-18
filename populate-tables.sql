.headers ON

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
    Image varbinary
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
    (10, 'flira', 'flira');

insert into board values
    (1, 'Engineering'),
    (2, 'Design'),
    (3, 'Directors'),
    (4, 'Logistics'),
    (5, 'Marketing');

insert into task VALUES
    (1, 1, 'New Hover Animation', '11-20-2021', 'Make it so that hovering an image enlarges the image', NULL),
    (2, 1, 'Fix Text Flexing Into New Line', '1-15-2021', 'Change the width and display property of the text', NULL),
    (3, 1, 'New Page: Hacktually 2', '11-13-2021', 'Render all the pages onto the MLH Local Hack Learn Day page', NULL),
    (4, 1, 'Bug: HTML code breaking the website', '10-10-2021', 'URGENT pls someone fix the website aaaa', NULL),
    (5, 1, 'Fix: Make Sponsors Component responsive!', '12-26-2021', 'At lower resolution widths, the component is too big', NULL);

insert into boardusers values
-- bId, uId
    (1, 2),
    (1, 3),
    (1, 6),
    (1. 8)
-- Queries