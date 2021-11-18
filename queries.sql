
.headers ON
-- Queries

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