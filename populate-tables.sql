.headers ON

-- Create Schema

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