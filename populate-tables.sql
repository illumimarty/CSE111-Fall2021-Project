
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
    (1, 1, 'New Hover Animation', '11-20-2021', 'Make it so that hovering an image enlarges the image', NULL),
    (2, 1, 'Fix Text Flexing Into New Line', '01-15-2021', 'Change the width and display property of the text', NULL),
    (3, 1, 'New Page: Hacktually 2', '11-13-2021', 'Render all the pages onto the MLH Local Hack Learn Day page', NULL),
    (4, 1, 'Bug: HTML code breaking the website', '10-10-2021', 'URGENT pls someone fix the website aaaa', NULL),
    (5, 1, 'Fix: Make Sponsors Component responsive!', '12-26-2021', 'At lower resolution widths, the component is too big', NULL),
    (6, 2, 'Design: presentation slides', '12-31-2021', 'for opening and closing ceremony (animations)', NULL),
    (7, 2, 'Design: room banners', '12-01-2021', 'Design pages for organizer rooms, judging rooms, etc.', NULL),
    (8, 2, 'Design: team jackets', '11-01-2021', 'long-sleeve, small image', NULL),
    (9, 2, 'Design: applications are open post', '01-15-2022', 'square and 1080x1080', NULL),
    (10, 2, 'Design: 10 stickers', '01-01-2022', 'very cute', NULL);

insert into BoardUsers values
-- bId, uId
    (1, 2),
    (1, 3),
    (1, 6),
    (1, 8),
    (1, 9),
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