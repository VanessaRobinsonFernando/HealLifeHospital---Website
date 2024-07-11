CREATE DATABASE hospital;
USE hospital;

/*Creating Doctor TABLE*/
CREATE TABLE `Doctor`(
	`DocId` 			int NOT NULL,
    `DocName`			varchar(20) NOT NULL,
    `DOB`				date,
	`Experience`		int NOT NULL,
    `Qualifications`	varchar(20),
    PRIMARY KEY(`DocId`)
);	

/*Creating multivalued attribute Phone TABLE*/
CREATE TABLE `Phone`(
	`DoctorId`		int NOT NULL,
    `Phone`		int(30) NOT NULL,
    PRIMARY KEY(`DoctorId`, `Phone`)
);

/*Creating Patient TABLE*/
CREATE TABLE `Patient`(
	`PId` 		int NOT NULL,
    `PAddress`	varchar(50),
    PRIMARY KEY(`PId`)
);	

/*Creating Doctor TABLE*/
CREATE TABLE `Department`(
	`DeptCode`		int NOT NULL,
    `DeptName`		varchar(20) NOT NULL,
    PRIMARY KEY(`DeptCode`)
);	

/*Creating User TABLE*/
CREATE TABLE `User`(
	`UserId`		int NOT NULL,
    `userName`		VARCHAR(10) NOT NULL,
    `DOB`			date,
	`Emirate`		varchar(20) NOT NULL,
    `zipCode`		int(10),
    PRIMARY KEY(`UserId`)
);	

/*Creating Appointment TABLE*/
CREATE TABLE `Appointment`(
	`aID`				int NOT NULL,
    `Email`				varchar(50) NOT NULL,
    `Phone`				int(15),
    `Phone2`			int(15),
    `Branch`			varchar(20) NOT NULL,
    `Speciality`		varchar(20) NOT NULL,
    `Doctor`			varchar(20),
    `Preferred_Date`	date,
    `Preferred_Time`	time,
    PRIMARY KEY(`aID`)
);	


/*Creating Account TABLE*/
CREATE TABLE `Account`(
	`fname`		varchar(10) NOT NULL,
    `lname`		varchar(10) NOT NULL,
	`Email`		varchar(20) NOT NULL,
    `password`	varchar(15) NOT NULL,
    `phone`		int(20) NOT NULL,
    PRIMARY KEY(`Email`)
);	

/*Creating Covid TABLE*/
CREATE TABLE `Covid`(
	`ReferenceNo`		int(5) NOT NULL,
    `Result` 			varchar(10) NOT NULL,
    PRIMARY KEY(`ReferenceNo`)
);	

/*Creating Insurance TABLE*/
CREATE TABLE `Insurance`(
	`IName`		varchar(20) NOT NULL,
    `Expiry`	date,
    PRIMARY KEY(`IName`)
);	

/*Inserting values into DOCTOR table*/
INSERT INTO `Doctor` VALUES(123, 'Chris Hill', '1976-07-07', 15, 'BmedSci');
INSERT INTO `Doctor` VALUES(222, 'Vanessa Fernando', '1940-12-03', 25, 'BMBS');
INSERT INTO `Doctor` VALUES(578, 'Zobia Tayyab', '1988-10-21', 5, 'MBChB');
INSERT INTO `Doctor` VALUES(612, 'Majid Alamoudi', '1955-05-11', 20, 'BM');
INSERT INTO `Doctor` VALUES(111, 'Rakesh Rajpal', '1996-03-15', 3, 'CME');
INSERT INTO `Doctor` VALUES(780, 'Shah Rukhan', '1992-08-28', 5, 'nMRCP');
INSERT INTO `Doctor` VALUES(434, 'Amita Bhachan', '1966-09-08', 20, 'BM');
INSERT INTO `Doctor` VALUES(701, 'Sandar Kumar', '1982-07-15', 15, 'MBChB');
INSERT INTO `Doctor` VALUES(456, 'Jouhar Verma', '1977-04-13', 17, 'BmedSci');
INSERT INTO `Doctor` VALUES(377, 'Redwan Kalash', '1980-10-01', 15, 'BM');

/*Inserting values into PHONE table*/
INSERT INTO `Phone` VALUES(111, 052378121);
INSERT INTO `Phone` VALUES(123, 0521567812);
INSERT INTO `Phone` VALUES(123, 0523450129);
INSERT INTO `Phone` VALUES(222, 0598456712);
INSERT INTO `Phone` VALUES(578, 0523450129);
INSERT INTO `Phone` VALUES(578, 0512984562);
INSERT INTO `Phone` VALUES(612, 0523450129);
INSERT INTO `Phone` VALUES(111, 0548134012);
INSERT INTO `Phone` VALUES(780, 0528912302);
INSERT INTO `Phone` VALUES(780, 0567192011);
INSERT INTO `Phone` VALUES(434, 0521189046);
INSERT INTO `Phone` VALUES(434, 0525712850);
INSERT INTO `Phone` VALUES(701, 0511984461);
INSERT INTO `Phone` VALUES(456, 0520901237);
INSERT INTO `Phone` VALUES(456, 0526671034);
INSERT INTO `Phone` VALUES(377, 0548890123);

/*Inserting values into PATIENT table*/
INSERT INTO `Patient` VALUES(2134, 'Academic City, Dubai');
INSERT INTO `Patient` VALUES(1897, 'Al Barsha, Dubai');
INSERT INTO `Patient` VALUES(5560, 'Jumeirah, Dubai');
INSERT INTO `Patient` VALUES(9081, 'Khalifa A, Abu Dhabi');
INSERT INTO `Patient` VALUES(3569, 'Riyadh, Abu Dhabi');
INSERT INTO `Patient` VALUES(2145, 'Silicon Oasis, Dubai');
INSERT INTO `Patient` VALUES(3718, 'Al Jurf, Ajman');
INSERT INTO `Patient` VALUES(9220, 'Muwaileh, Sharjah');
INSERT INTO `Patient` VALUES(4321, 'Mushairef, Ajman');
INSERT INTO `Patient` VALUES(7819, 'Al Khan, Sharjah');

/*Inserting values into DEPARTMENT table*/
INSERT INTO `Department` VALUES(01, 'Gynaecology');
INSERT INTO `Department` VALUES(02, 'Neurology');
INSERT INTO `Department` VALUES(03, 'Orthopaedics');
INSERT INTO `Department` VALUES(04, 'Physiotherapy');
INSERT INTO `Department` VALUES(05, 'Radiology');
INSERT INTO `Department` VALUES(06, 'Urology');
INSERT INTO `Department` VALUES(07, 'Ophthalmology');
INSERT INTO `Department` VALUES(08, 'Rheumatology');
INSERT INTO `Department` VALUES(09, 'Dermatology');
INSERT INTO `Department` VALUES(10, 'Audiology');
INSERT INTO `Department` VALUES(11, 'Paediatrics');
INSERT INTO `Department` VALUES(12, 'Neurosurgery');

/*Inserting values into COVID table*/
INSERT INTO `Covid` VALUES(123, 'Negative');
INSERT INTO `Covid` VALUES(321, 'Negative');
INSERT INTO `Covid` VALUES(222, 'Positive');
INSERT INTO `Covid` VALUES(678, 'Negative');
INSERT INTO `Covid` VALUES(091, 'Negative');
INSERT INTO `Covid` VALUES(548, 'Positive');
INSERT INTO `Covid` VALUES(872, 'Negative');
INSERT INTO `Covid` VALUES(349, 'Negative');
INSERT INTO `Covid` VALUES(781, 'Negative');
INSERT INTO `Covid` VALUES(934, 'Positive');

DELETE FROM `Covid` WHERE `ReferenceNo`=91;

/*Inserting values into INSURANCE table*/
INSERT INTO `Insurance` VALUES('Orient Insurance', '2025-07-09');
INSERT INTO `Insurance` VALUES('Dubai Insurance Co', '2024-12-12');
INSERT INTO `Insurance` VALUES('Union Insurance', '2026-11-21');
INSERT INTO `Insurance` VALUES('National Insurance', '2023-02-16');
INSERT INTO `Insurance` VALUES('Takaful Emarat', '2022-10-02');

/*Alter APPOINTMENT table*/
ALTER TABLE appointment
MODIFY COLUMN
Preferred_Date DATE;

ALTER TABLE appointment
ADD COLUMN
Preferred_Time TIME;


Select* from Account;
Select * from Appointment;









