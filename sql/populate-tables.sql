
insert into User values
    (1, 'mnodado', 'nodado'),
    (2, 'tchan', 'chan'),
    (3, 'adarian', 'darian'),
    (4, 'mj', 'singh'),
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
    (1, 1, 'New Hover Animation', '2021-11-20', 'Make it so that hovering an image enlarges the image', NULL, 'IN PROGRESS'),
    (2, 1, 'Fix Text Flexing Into New Line', '2021-01-15', 'Change the width and display property of the text', NULL, 'COMPLETED'),
    (3, 1, 'New Page: Hacktually 2', '2021-11-13', 'Render all the pages onto the MLH Local Hack Learn Day page', NULL, 'COMPLETED'),
    (4, 1, 'Bug: HTML code breaking the website', '2021-10-10', 'URGENT pls someone fix the website aaaa', NULL, 'COMPLETED'),
    (5, 1, 'Fix: Make Sponsors Component responsive!', '2021-12-26', 'At lower resolution widths, the component is too big', NULL, 'TO DO'),
    (6, 2, 'Design: presentation slides', '2021-12-31', 'for opening and closing ceremony (animations)', NULL, 'TO DO'),
    (7, 2, 'Design: room banners', '2021-12-01', 'Design pages for organizer rooms, judging rooms, etc.', NULL, 'IN PROGRESS'),
    (8, 2, 'Design: team jackets', '2021-11-01', 'long-sleeve, small image', NULL, 'COMPLETED'),
    (9, 2, 'Design: applications are open post', '2022-01-15', 'square and 1080x1080', NULL, 'TO DO'),
    (10, 2, 'Design: 10 stickers', '2022-01-01', 'very cute', NULL, 'TO DO'),
    (11, 3, 'Reach out to stickermule', '2021-05-11', 'we need sponsors for hackmerced VII!!!', NULL, 'TO DO'),
    (12, 3, 'Distribute swag from MLH Local Hack Day: Learn', '2021-07-20', 'Once the swag comes in, make sure to ship to all participants', NULL, 'TO DO'),
    (13, 3, 'Book the large conference hall building for HackMerced VII', '2022-03-01', 'this is a must', NULL, 'IN PROGRESS'),
    (14, 3, 'Read a book', '2022-01-01', 'relax before the new year', NULL, 'COMPLETED'),
    (15, 3, 'Design the theme of HackMerced VII', '2022-03-01', 'start- up', NULL, 'IN PROGRESS');

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
    (4, 'mj'),
    (5, 'asiaotong'),
    (6, 'mdelosreyes'),
    (7, 'aestrella'),
    (8, 'aross'),
    (9, 'sduong'),
    (10, 'flira');

insert into Comment values
    (1, 4, 1, "Comment: yeah, a hover animation would be nice here!", '[7/10/2021 - 1:02 PM]'),
    (1, 2, 2, "Comment: oke, I'll get it done soon.", '[7/10/2021 - 4:61 PM]');