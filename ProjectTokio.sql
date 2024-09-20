CREATE TABLE `projecttokyo`.`ATHLETES` (
`name` VARCHAR (100) NULL,
`country` VARCHAR (50) NULL,
`discipline` VARCHAR (50) NULL);

CREATE TABLE `projecttokyo`.`COACHES` (
`name` VARCHAR (100) NULL,
`country` VARCHAR (50) NULL,
`discipline` VARCHAR (50) NULL,
`event` VARCHAR (50) NULL);

CREATE TABLE `projecttokyo`.`TEAMS` (
`name` VARCHAR (100) NULL,
`discipline`  VARCHAR (50) NULL,
`country` VARCHAR (50) NULL,
`event` VARCHAR (50) NULL);

CREATE TABLE `projecttokyo`.`GENDER` (
`discipline` VARCHAR (50) NULL,
`female` INT NULL,
`male` INT NULL,
`total` INT NULL);

CREATE TABLE `projecttokyo`.`MEDALS` (
`rank` INT NULL,
`team/country` VARCHAR (50) NULL,
`gold` INT NULL,
`silver` INT NULL,
`bronze` INT NULL,
`rank by total` INT NULL);

--


LOAD DATA INFILE 'D:\Thiago\Data\Analista de Dados DSA\SQL\Cap 04 - Junção de Tabelas\archive project Tokyo\Medals.csv'
INTO TABLE `projecttokyo`.`medals`
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


--

# Solution Tokio Project

# 1
SELECT name
FROM projecttokyo.coaches 
WHERE discipline = 'Handball';

SELECT name
FROM projecttokyo.athletes 
WHERE discipline = 'Handball';

# 2
SELECT name, gold
FROM projecttokyo.coaches A, projecttokyo.medals B
WHERE A.country = B.Team/NOC
AND A.country = 'Australia'
AND gold > 0
ORDER BY gold DESC;

-> Cannot be answered

# 3
-> Cannot be answered

# 4
SELECT A.noc, gold, silver 
FROM exec3.TB_ATLETAS A, exec3.TB_MEDALS B
WHERE A.noc = B.noc
AND a.noc = 'Norway'

-> Cannot be answered

# 5
-> Cannot be answered










