
.headers ON
-- Queries

drop table ;

-- List all members working on design projects
-- select Username as design_member
-- from Board, BoardUsers, User
-- where Board.BoardId = BoardUsers.BoardId
--     and BoardUsers.UserId =  User.UserId
--     and Title = 'Design';

-- Find all completed tasks for Engineering and Design. Print the board title and Task Title.
-- select Task.Title, Board.Title
-- from Task, Board
-- where Task.BoardId = Board.BoardId
--     and Status = "COMPLETED";


-- Insert a new board for the Logistics team.
insert into Board values (4, "Logistics");

-- Insert members on Logistics team;
insert into BoardUsers values
    (4, 9),
    (4, 7);

-- Create a logistics task -> INCOMPLETE
insert into Task values (11, 4, 'Write down ideas for workshops, games/activities', '2021-11-01', 'be creative', NULL, 'TO DO');

-- -- Assign a logistics task to all members of that board
-- insert into Board
--     select 
--     from Assignee

-- Find tasks that are due in 2022.
SELECT Title
FROM Task
WHERE DueDate between date('2022-01-01') and date('2022-12-31')
GROUP BY Title;

-- Find everything in Tasks where boardid is 1. Show 3 only.
SELECT *
FROM Task
WHERE BoardId = 1
LIMIT 3;


-- Insert into Assignee userid 11 and username 'Nautilus'
INSERT INTO Assignee (UserId, Username)
VALUES (11, 'Nautilus');
-- Delete from Assignee where username is 'Nautilus'
DELETE FROM Assignee WHERE Username = 'Nautilus';


-- Update password to 'test' where username is 'flira'
UPDATE User
SET Password = 'test'
WHERE Username = 'flira';