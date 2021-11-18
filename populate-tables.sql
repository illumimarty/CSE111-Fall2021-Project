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
    Title, string,
    DueDate varchar,
    Details string,
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
insert into User values
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

insert into Board values
    (1, 'Engineering'),
    (2, 'Design'),
    (3, 'Directors');

insert into Task VALUES
    (6, 2, 'Design: presentation slides', '2021-12-31', 'for opening and closing ceremony (animations)'),
    (7, 2, 'Design: room banners'), '2021-12-01', 'Design pages for organizer rooms, judging rooms, etc.'),
    (8, 2, 'Design: team jackets', '2021-11-01', 'long-sleeve, small image'),
    (9, 2, 'Design: applications are open post', '2022-01-15', 'square and 1080x1080'),
    (10, 2, 'Design: 10 stickers', '2022-01-01', 'very cute');



insert into BoardUsers values
-- bId, uId
    (1, 2),
    (1, 3),
    (1, 6),
    (1. 8),
    (1, 9)
    (2, 1),
    (2, 4),
    (2, 5),
    (2, 6),
    (2, 10),
    (3, 1),
    (3, 2),
    (3, 5),
    (3, 6),
    (3, 7);

insert into TaskAssignee values
-- tId, uId
    (6, 1),
    (7, 6),
    (8, 5),
    (9, 10),
    (10, 1),
    (10, 5),
    (10, 10);

insert into Assignee values
    (1, 'mnodado'),
    (2, 'tchan'),
    (3, 'adarian'),
    (4, 'msingh'),
    (5, 'asiaotong'),
    (6, 'mdelosreyes'),
    (7, 'aestrella'),
    (8, 'aross'),
    (9, 'sduong'),
    (10, 'flira');


-- Queries