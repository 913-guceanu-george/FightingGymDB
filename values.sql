GO
USE FightingGym
GO

DELETE FROM Student
DELETE FROM FightingMatch
DELETE FROM Teacher
DELETE FROM Class
DELETE FROM Glove

-- DROP TABLE Student
-- DROP TABLE Teacher
-- DROP TABLE FightingMatch
-- DROP TABLE Glove
-- DROP TABLE Class
-- DROP TABLE Lesson
-- DROP TABLE Materials
-- DROP TABLE Payment
-- DROP TABLE Salary
-- DROP TABLE Trophy


-- Values for Student
INSERT INTO Student
    (full_name, years_of_exp)
VALUES('Mircea Bravo', 10)

INSERT INTO Student
    (full_name, years_of_exp)
VALUES('Daniel Dincu', 3)

INSERT INTO Student
    (full_name, years_of_exp)
VALUES('Graham Lincoln', 4)

INSERT INTO Student
    (full_name, years_of_exp)
VALUES('Milayoy Samoa', 5)

INSERT INTO Student
    (full_name, years_of_exp)
VALUES('Pay Attention', 3)

SELECT *
FROM Student


-- Values for Teacher
INSERT INTO Teacher
    (full_name, diploma, studid)
VALUES('Mark Lennon', 0, 16)

INSERT INTO Teacher
    (full_name, diploma, studid)
VALUES('John Green', 1, 17)

INSERT INTO Teacher
    (full_name, diploma, studid)
VALUES('Saoyey Lamoe', 0, 17)

INSERT INTO Teacher
    (full_name, diploma, studid)
VALUES('Pierre Obourne', 0, 18)

INSERT INTO Teacher
    (full_name, diploma, studid)
VALUES('Just Aname', 1, 20)

SELECT *
from Teacher

-- Values for Class
INSERT INTO Class
    (years_of_exp_req, tid)
VALUES
    (1, 26)
INSERT INTO Class
    (years_of_exp_req, tid)
VALUES
    (2, 26)
INSERT INTO Class
    (years_of_exp_req, tid)
VALUES
    (5, 27)
INSERT INTO Class
    (years_of_exp_req, tid)
VALUES
    (3, 27)

select *
from Class

-- Values for FightingMatch
INSERT INTO FightingMatch
    (stid, match_date)
VALUES(17, '13.02.2022')

INSERT INTO FightingMatch
    (stid, match_date)
VALUES(18, '22.04.2022')

INSERT INTO FightingMatch
    (stid, match_date)
VALUES(16, '25.12.2022')

INSERT INTO FightingMatch
    (stid, match_date)
VALUES(18, '12.11.2023')

INSERT INTO FightingMatch
    (stid, match_date)
VALUES(19, '29.02.2024')

SELECT *
FROM FightingMatch


-- Values for Glove
INSERT INTO Glove
    (material, stid)
VALUES('leather', 17)

INSERT INTO Glove
    (material, stid)
VALUES('leather', 20)

INSERT INTO Glove
    (material, stid)
VALUES('synthetic', 19)

INSERT INTO Glove
    (material, stid)
VALUES('synthetic', 17)

INSERT INTO Glove
    (material, stid)
VALUES('synthetic leather', 16)

SELECT *
FROM Glove