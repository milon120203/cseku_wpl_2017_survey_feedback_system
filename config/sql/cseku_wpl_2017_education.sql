-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2017 at 05:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku_wpl_2017_education`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club`
--

CREATE TABLE `tbl_club` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CoverPhoto` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `CreationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club_member`
--

CREATE TABLE `tbl_club_member` (
  `ClubID` varchar(40) NOT NULL,
  `MemberID` varchar(40) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_club_module`
--

CREATE TABLE `tbl_club_module` (
  `ClubID` varchar(20) NOT NULL,
  `ModuleName` varchar(50) NOT NULL,
  `IsVisible` tinyint(1) NOT NULL,
  `PositionX` int(11) NOT NULL,
  `PositionY` int(11) NOT NULL,
  `SizeX` int(11) NOT NULL,
  `SizeY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_attendance`
--

CREATE TABLE `tbl_course_marks_attendance` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `ClassDate` date NOT NULL,
  `IsPresent` tinyint(1) NOT NULL,
  `UseFace` tinyint(1) NOT NULL,
  `UseFinger` tinyint(1) NOT NULL,
  `UseSheet` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_attendance_publish`
--

CREATE TABLE `tbl_course_marks_attendance_publish` (
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `TotalAttendance` int(11) NOT NULL,
  `TotalClass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_result`
--

CREATE TABLE `tbl_course_marks_result` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(50) NOT NULL,
  `MarksValue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_result_publish`
--

CREATE TABLE `tbl_course_marks_result_publish` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksTotal` double NOT NULL,
  `MarksGrade` varchar(10) NOT NULL,
  `GPA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_marks_setup`
--

CREATE TABLE `tbl_course_marks_setup` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `MarksID` varchar(50) NOT NULL,
  `MarksHeader` varchar(20) NOT NULL,
  `MarksMax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_resource`
--

CREATE TABLE `tbl_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_sessional_type`
--

CREATE TABLE `tbl_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_student_registration`
--

CREATE TABLE `tbl_course_student_registration` (
  `StudentID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `IsRetake` tinyint(1) NOT NULL,
  `IsApproved` tinyint(1) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_teacher`
--

CREATE TABLE `tbl_course_teacher` (
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_teacher_registration`
--

CREATE TABLE `tbl_course_teacher_registration` (
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_type`
--

CREATE TABLE `tbl_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `SchoolID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discipline`
--

INSERT INTO `tbl_discipline` (`ID`, `Name`, `SchoolID`) VALUES
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Statistics', ''),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning (URP)', ''),
('{B34A0580-0B92-49BD-84FB-929297B104C5}', 'Electrical and Communication Engineering (ECE)', ''),
('{E03C2DC3-CAF3-477E-A851-0C11DF93FD3B}', 'Chemistry', ''),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', ''),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering (CSE)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline_resource`
--

CREATE TABLE `tbl_discipline_resource` (
  `DisciplineID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion`
--

CREATE TABLE `tbl_discussion` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `CreationDate` date NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_category`
--

CREATE TABLE `tbl_discussion_category` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_comment`
--

CREATE TABLE `tbl_discussion_comment` (
  `CommentID` varchar(50) NOT NULL,
  `DiscussionID` varchar(40) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `CommentIDTop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `ID` varchar(50) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file_assign`
--

CREATE TABLE `tbl_file_assign` (
  `FileID` varchar(50) NOT NULL,
  `FileComment` varchar(300) NOT NULL,
  `IsApproved` tinyint(1) NOT NULL,
  `IsRejected` tinyint(1) NOT NULL,
  `CurrentUserID` varchar(40) NOT NULL,
  `IsPending` tinyint(1) NOT NULL,
  `HasSeen` tinyint(1) NOT NULL,
  `CreationDate` date NOT NULL,
  `ApproveDate` date NOT NULL,
  `AssignDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_marks_grade`
--

CREATE TABLE `tbl_marks_grade` (
  `MarksMin` double NOT NULL,
  `MarksMax` double NOT NULL,
  `MarksGrade` varchar(10) NOT NULL,
  `GPA` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`ID`, `Name`, `Category`) VALUES
('CLUB_C', 'CLUB_C', 'CLUB'),
('CLUB_D', 'CLUB_D', 'CLUB'),
('CLUB_R', 'CLUB_R', 'CLUB'),
('CLUB_U', 'CLUB_U', 'CLUB'),
('COURSE_C', 'COURSE_C', 'COURSE'),
('COURSE_D', 'COURSE_D', 'COURSE'),
('COURSE_R', 'COURSE_R', 'COURSE'),
('COURSE_U', 'COURSE_U', 'COURSE'),
('DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
('DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
('DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
('DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
('FILE_C', 'FILE_C', 'FILE'),
('FILE_D', 'FILE_D', 'FILE'),
('FILE_R', 'FILE_R', 'FILE'),
('FILE_U', 'FILE_U', 'FILE'),
('POSITION_C', 'POSITION_C', 'POSITION'),
('POSITION_D', 'POSITION_D', 'POSITION'),
('POSITION_R', 'POSITION_R', 'POSITION'),
('POSITION_U', 'POSITION_U', 'POSITION'),
('PROJECT_C', 'PROJECT_C', 'PROJECT'),
('PROJECT_D', 'PROJECT_D', 'PROJECT'),
('PROJECT_R', 'PROJECT_R', 'PROJECT'),
('PROJECT_U', 'PROJECT_U', 'PROJECT'),
('ROLE_C', 'ROLE_C', 'ROLE'),
('ROLE_D', 'ROLE_D', 'ROLE'),
('ROLE_R', 'ROLE_R', 'ROLE'),
('ROLE_U', 'ROLE_U', 'ROLE'),
('SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
('SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
('SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
('SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
('SESSION_C', 'SESSION_C', 'SESSION'),
('SESSION_D', 'SESSION_D', 'SESSION'),
('SESSION_R', 'SESSION_R', 'SESSION'),
('SESSION_U', 'SESSION_U', 'SESSION'),
('SURVEY_C', 'SURVEY_C', 'SURVEY'),
('SURVEY_D', 'SURVEY_D', 'SURVEY'),
('SURVEY_R', 'SURVEY_R', 'SURVEY'),
('SURVEY_U', 'SURVEY_U', 'SURVEY'),
('TERM_C', 'TERM_C', 'TERM'),
('TERM_D', 'TERM_D', 'TERM'),
('TERM_R', 'TERM_R', 'TERM'),
('TERM_U', 'TERM_U', 'TERM'),
('USER_C', 'USER_C', 'USER'),
('USER_D', 'USER_D', 'USER'),
('USER_R', 'USER_R', 'USER'),
('USER_U', 'USER_U', 'USER'),
('YEAR_C', 'YEAR_C', 'YEAR'),
('YEAR_D', 'YEAR_D', 'YEAR'),
('YEAR_R', 'YEAR_R', 'YEAR'),
('YEAR_U', 'YEAR_U', 'YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `CreationDate` date NOT NULL,
  `ProjectDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_student`
--

CREATE TABLE `tbl_project_student` (
  `ProjectID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_archive`
--

CREATE TABLE `tbl_question_archive` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `QuestionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration_session`
--

CREATE TABLE `tbl_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resource`
--

CREATE TABLE `tbl_resource` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`ID`, `Name`) VALUES
('{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'Staff'),
('{3477F777-3F53-408B-9773-249C5937C2B8}', 'Teacher'),
('{6D2964B0-E378-4D73-A01F-82C17D5550F1}', 'Officer'),
('{9CC63B6A-99BD-4710-B675-9881B5F7337A}', 'Student'),
('{F9C458F2-5298-441F-AE63-7514029760C4}', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_permission`
--

CREATE TABLE `tbl_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role_permission`
--

INSERT INTO `tbl_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(225, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'COURSE_C'),
(226, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'COURSE_D'),
(227, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'FILE_C'),
(228, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'FILE_D'),
(229, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'FILE_R'),
(230, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'FILE_U'),
(231, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'POSITION_C'),
(232, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'POSITION_D'),
(233, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'POSITION_R'),
(234, '{3477F777-3F53-408B-9773-249C5937C2B8}', 'POSITION_U'),
(564, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'CLUB_C'),
(565, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'CLUB_D'),
(566, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'CLUB_R'),
(567, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'CLUB_U'),
(568, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'COURSE_C'),
(569, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'COURSE_D'),
(570, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'COURSE_R'),
(571, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'COURSE_U'),
(572, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'DISCIPLINE_C'),
(573, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'DISCIPLINE_D'),
(574, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'DISCIPLINE_R'),
(575, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'DISCIPLINE_U'),
(576, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'FILE_C'),
(577, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'FILE_D'),
(578, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'FILE_R'),
(579, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'FILE_U'),
(580, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'POSITION_C'),
(581, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'POSITION_D'),
(582, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'POSITION_R'),
(583, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'POSITION_U'),
(584, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'PROJECT_C'),
(585, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'PROJECT_D'),
(586, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'PROJECT_R'),
(587, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'PROJECT_U'),
(588, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'ROLE_C'),
(589, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'ROLE_D'),
(590, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'ROLE_R'),
(591, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'ROLE_U'),
(592, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SCHOOL_C'),
(593, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SCHOOL_D'),
(594, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SCHOOL_R'),
(595, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SCHOOL_U'),
(596, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SESSION_C'),
(597, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SESSION_D'),
(598, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SESSION_R'),
(599, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SESSION_U'),
(600, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SURVEY_C'),
(601, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SURVEY_D'),
(602, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SURVEY_R'),
(603, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'SURVEY_U'),
(604, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'TERM_C'),
(605, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'TERM_D'),
(606, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'TERM_R'),
(607, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'TERM_U'),
(608, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'USER_C'),
(609, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'USER_D'),
(610, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'USER_R'),
(611, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'USER_U'),
(612, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'YEAR_C'),
(613, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'YEAR_D'),
(614, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'YEAR_R'),
(615, '{F9C458F2-5298-441F-AE63-7514029760C4}', 'YEAR_U'),
(626, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'CLUB_C'),
(627, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'COURSE_D'),
(628, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'DISCIPLINE_R'),
(629, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'FILE_U'),
(630, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'POSITION_R'),
(631, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'PROJECT_D'),
(632, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'ROLE_C'),
(633, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'SCHOOL_D'),
(634, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'SESSION_R'),
(635, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'SURVEY_U'),
(636, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'TERM_R'),
(637, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'USER_D'),
(638, '{1AF8A832-4C03-49C7-8071-C71D4EB4FC57}', 'YEAR_C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routine`
--

CREATE TABLE `tbl_routine` (
  `DayID` varchar(40) NOT NULL,
  `TimeID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `SlotNo` int(11) NOT NULL,
  `TeacherID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routine_day`
--

CREATE TABLE `tbl_routine_day` (
  `ID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_routine_time`
--

CREATE TABLE `tbl_routine_time` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology (SET)', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey`
--

CREATE TABLE `tbl_survey` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Link` varchar(100) NOT NULL,
  `TotalQuestions` int(11) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `CreationDate` date NOT NULL,
  `CompletionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_survey`
--

INSERT INTO `tbl_survey` (`ID`, `Title`, `Description`, `Link`, `TotalQuestions`, `CreatorID`, `CreationDate`, `CompletionDate`) VALUES
('{0F9F1DD2-AB33-43E1-B191-D53FB523BA45}', 'DS Lab', 'Saikat Sir Took this', '', 6, '{B51D020E-1BB9-4FA3-86BF-C32949367885}', '2017-04-16', '2017-04-22'),
('{1182D6DB-9A7C-41D0-8A16-397DED9DD47B}', 'Geometry Class', 'This course taught by Dr. Anisur Rahman. It a new course offered to the undergrad student', '', 3, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '2017-04-18', '2017-04-30'),
('{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 'Checking for Two', 'Ha ha ha I am checking it for two question :p', '', 2, '{EC675CB7-2551-4062-A79E-0EF15481D38A}', '2017-04-18', '2017-04-18'),
('{260E7C21-F86C-40FC-B86C-550258516A22}', 'Checking for Two', 'Ha ha ha I am checking it for two question :p', '', 2, '{EC675CB7-2551-4062-A79E-0EF15481D38A}', '2017-04-18', '2017-04-18'),
('{2F6E9CDB-783F-474C-9C8E-8AF8B009E651}', 'Database Lab', 'That is continuously teaching by Dr. Anisur Rahman', '', 4, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '2017-04-13', '2017-04-26'),
('{31C33AAB-C557-4550-9711-3E386C7A4606}', 'Software Engineering Lab', 'Took by Sir Joy Debashis', '', 2, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '2017-04-18', '2017-04-26'),
('{57C6F2B9-50CC-4833-A004-83C44D291332}', 'A journey', 'A journy description', '', 4, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '2017-04-18', '2017-04-18'),
('{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '44', 'hljljlj', '', 4, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '2017-04-13', '2017-04-15'),
('{9444664D-64AF-49BE-AB0B-27291E7168C2}', 'WPL / IPL By Mani Sir', 'He has good skilled and taught us Entire Architecture in the OOP perspective ', '', 6, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '2017-04-13', '2017-04-25'),
('{DA0F0043-9A48-459F-A294-2645EE78A769}', 'OS LAB', 'Taught by Sir Shamim Arif', '', 3, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '2017-04-18', '2017-04-28'),
('{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 'Geometry Class', 'This course taught by Dr. Anisur Rahman. It a new course offered to the undergrad student', '', 3, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '2017-04-18', '2017-04-30'),
('{FCB90C71-6995-4085-9E23-AFDFE55BCE5E}', 'Database Lab', 'That is continuously teaching by Dr. Anisur Rahman', '', 4, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '2017-04-13', '2017-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question`
--

CREATE TABLE `tbl_survey_question` (
  `ID` varchar(40) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionNo` int(11) NOT NULL,
  `QuestionType` varchar(20) NOT NULL,
  `QuestionValue` varchar(300) NOT NULL,
  `NumberOfOption` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_survey_question`
--

INSERT INTO `tbl_survey_question` (`ID`, `SurveyID`, `QuestionNo`, `QuestionType`, `QuestionValue`, `NumberOfOption`) VALUES
('1', '1', 1, 'commentbox', 'Is there anything easier than it ? ', 0),
('2', '2', 2, 'dropbox', 'Facebook or Instagram ?', 0),
('{5A38CDDF-0178-4E54-96F0-AAB8F00FB3AC}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 1, 'MCQ', 'What are you doing?', 2),
('{B8DF81EF-4298-411B-8C2C-5B30863D2637}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 2, 'MCQ', 'What is your name?', 3),
('{8FD6259A-01E0-415A-91F2-76AC99E260DA}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 1, 'MCQ', 'What are you doing?', 2),
('{DC5964BE-96EA-4CAE-AD09-985B6234899F}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 2, 'MCQ', 'What is your name?', 3),
('{4365FED9-7041-4F57-9DA1-5A6515737BA5}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 1, 'MCQ', 'What are you doing?', 2),
('{A64A2E03-A01C-4BBB-AA4D-082B1CC4D7B7}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 2, 'MCQ', 'What is your name?', 3),
('{3E44C428-E42E-4A4B-A13A-973290C40A6E}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 1, 'MCQ', 'Who are you?', 2),
('{980114AB-8DF5-40A2-AF02-ACBA12C95E91}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 1, 'MCQ', 'Hmm', 2),
('{643FAB33-057B-4D00-9AFB-492DF3901E8A}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 2, 'MCQ', 'Klllll', 2),
('{7E7D61DC-52A6-4BF6-AECC-CEA0EA8A816B}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 1, 'MCQ', 'Hmm', 2),
('{177CC4AC-E296-41D9-B36F-4B490D18C2E4}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 2, 'MCQ', 'Klllll', 2),
('{D7D012C2-5149-4D35-B297-1825A8E278AE}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 1, 'MCQ', 'Hmm', 2),
('{1D3C7F0B-9713-4A0C-A611-9192715824DC}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 2, 'MCQ', 'Klllll', 2),
('{25710193-61AA-42E5-A63A-423A94A8B708}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 1, 'MCQ', 'Hmm', 2),
('{699FD8C4-01E1-49A0-843E-0717ABEF9F47}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 2, 'MCQ', 'Klllll', 2),
('{1FAAA76A-39BE-453D-A9F1-FBC85F0541A3}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 1, 'MCQ', 'MP Coures', 3),
('{64BA3312-27AC-4711-84E1-0FF1D830247F}', '{260E7C21-F86C-40FC-B86C-550258516A22}', 2, 'MCQ', 'Wpl Cour5ses', 2),
('{3C37C574-4340-44A7-882C-B79B97B16A65}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 1, 'MCQ', 'Hi there', 1),
('{1F262787-C6C9-4F0D-980C-12CB37F5974F}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 2, 'MCQ', 'Hmmm', 1),
('{37113CE3-ABC3-4A99-BF7D-7A7C61DF6AAC}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 3, 'MCQ', 'OOO wow', 2),
('{74B9DBD2-DA05-4C11-800D-1273618743DB}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 4, 'MCQ', 'A ki holo', 2),
('{74C46E2D-1017-43FE-9E64-886672CF0B15}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 1, 'MCQ', 'Hi there', 1),
('{6C531554-4746-4BEF-A0EA-9E0AF69932FB}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 2, 'MCQ', 'jkjkjk', 1),
('{3DDF8B94-0105-4232-802B-6E5E878A7B6A}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 3, 'MCQ', 'yuyuyu', 1),
('{846DFBA0-E8BC-40FD-9E5E-5EC9B0C27676}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', 4, 'MCQ', 'fdfdf', 1),
('{B516D8B6-9814-4505-9D48-601861AB000C}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', 1, 'MCQ', 'In which city', 2),
('{BF914B98-77A4-4DB2-801F-9FFF78D058F1}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', 2, 'MCQ', 'By which vehicle', 2),
('{DA389EFE-93EB-45BC-BE22-0E7CCAB8F9C3}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', 3, 'MCQ', 'How many days', 2),
('{06B3D441-9612-4C61-BA8E-D0536BF6072B}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', 4, 'MCQ', 'For what reason', 2),
('{D891C907-8F40-4955-8B6D-DD1468B47B9A}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 1, 'MCQ', 'How are you', 1),
('{D8487D86-EDF8-44BE-BA21-E0FB091A29F4}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', 2, 'MCQ', 'What\'s about you', 2),
('{CD93ED47-7FCD-47B7-A505-F4A990DAAFD9}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 1, 'MCQ', 'What about the lectures ?', 3),
('{294CC746-DC6E-4745-9734-4BD7EE89C18E}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 2, 'MCQ', 'What about your CT\'s mark ?', 4),
('{08B665B5-21FE-43EE-BFB8-67D416444CFA}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 3, 'MCQ', 'What\'s about your knowledge on this specific course ?', 5),
('{28057FD4-2914-466B-B5A6-059272E82FB0}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 1, 'MCQ', 'What about the lectures ?', 3),
('{7908625C-C358-4F0D-964F-2D5CBE845513}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 2, 'MCQ', 'What about your CT\'s mark ?', 4),
('{2A9D6F2D-007F-4CDA-984C-B06ED2091EA6}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', 3, 'MCQ', 'What\'s about your knowledge on this specific course ?', 5),
('{EFDF66B7-2D02-4A6B-ABCC-0A71BD4442BE}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', 1, 'MCQ', 'Tell me about your experience', 3),
('{043826C3-6AE7-475F-9651-1D93B0B83E97}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', 2, 'MCQ', 'What\'s about your marks ?', 2),
('{C77E6978-F50E-4DD3-92ED-6B6B8B392BE7}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', 3, 'MCQ', 'What\'s about Sir Shamim Arif', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question_filled`
--

CREATE TABLE `tbl_survey_question_filled` (
  `ID` int(11) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionID` varchar(40) NOT NULL,
  `FilledValue` varchar(200) NOT NULL,
  `FilledUserID` varchar(40) NOT NULL,
  `FilledTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question_option`
--

CREATE TABLE `tbl_survey_question_option` (
  `ID` varchar(40) NOT NULL,
  `SurveyID` varchar(40) NOT NULL,
  `QuestionID` varchar(40) NOT NULL,
  `OptionFieldValue` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_survey_question_option`
--

INSERT INTO `tbl_survey_question_option` (`ID`, `SurveyID`, `QuestionID`, `OptionFieldValue`) VALUES
('{1F3286FA-01BB-42CC-90B0-C9119CF56366}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{25710193-61AA-42E5-A63A-423A94A8B708}', 'MD.'),
('{C1599AB3-E27A-47EA-A4DC-DB7D211AC5D5}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{25710193-61AA-42E5-A63A-423A94A8B708}', '5454'),
('{7F7F9B8D-5E73-4D59-8327-1F97FA9CCA58}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{699FD8C4-01E1-49A0-843E-0717ABEF9F47}', 'Yes'),
('{0BE4D56A-35DD-43AD-B862-BC4E1E92A6DB}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{699FD8C4-01E1-49A0-843E-0717ABEF9F47}', 'hghghhg'),
('{C6EDD95F-0D1D-4D8D-AE4E-CB93A0DD018E}', '{260E7C21-F86C-40FC-B86C-550258516A22}', '{1FAAA76A-39BE-453D-A9F1-FBC85F0541A3}', 'eerre'),
('{2325B19D-D88E-458A-B3EA-5942470686BC}', '{260E7C21-F86C-40FC-B86C-550258516A22}', '{1FAAA76A-39BE-453D-A9F1-FBC85F0541A3}', 'werew'),
('{5AAD628C-312F-4071-9933-DFC21E4F7A2F}', '{260E7C21-F86C-40FC-B86C-550258516A22}', '{1FAAA76A-39BE-453D-A9F1-FBC85F0541A3}', 'erwer'),
('{259BC44F-3D7D-4BEB-87B0-6FDC448C43AB}', '{260E7C21-F86C-40FC-B86C-550258516A22}', '{64BA3312-27AC-4711-84E1-0FF1D830247F}', 'reret'),
('{1869719D-B1D2-4868-8ABF-915031E1745D}', '{260E7C21-F86C-40FC-B86C-550258516A22}', '{64BA3312-27AC-4711-84E1-0FF1D830247F}', 'ertert'),
('{E9CC012B-1879-4BBC-85BF-47765BED34D4}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{3C37C574-4340-44A7-882C-B79B97B16A65}', '12'),
('{8D1A3CE9-CC1F-40CE-858E-E8F69C971CD1}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{1F262787-C6C9-4F0D-980C-12CB37F5974F}', '12'),
('{CAEDD08C-0EA3-4753-84B1-EA846D38FFA9}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{37113CE3-ABC3-4A99-BF7D-7A7C61DF6AAC}', 'hmmm'),
('{D32B5C91-544F-47C0-8ECD-FB5376C12AFF}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{37113CE3-ABC3-4A99-BF7D-7A7C61DF6AAC}', 'are'),
('{4244F0C9-65BB-4E95-A614-CBD17077AB71}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{74B9DBD2-DA05-4C11-800D-1273618743DB}', 'hmm'),
('{C55B1717-F6EF-41CD-911A-92453D29A411}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{74B9DBD2-DA05-4C11-800D-1273618743DB}', ''),
('{0422CFE9-87CD-4176-8BC7-3F630BFD437C}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{74C46E2D-1017-43FE-9E64-886672CF0B15}', '121'),
('{F1959D5E-689F-4A4B-B20C-AB606075F448}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{6C531554-4746-4BEF-A0EA-9E0AF69932FB}', '45454'),
('{1171EDAC-E1C6-4001-8909-781D79C2D462}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{3DDF8B94-0105-4232-802B-6E5E878A7B6A}', '1212'),
('{F2467456-5975-40ED-888A-259EDA2F024C}', '{7BA37101-19A8-42C3-BD01-57D0AF94DB4F}', '{846DFBA0-E8BC-40FD-9E5E-5EC9B0C27676}', '12121'),
('{39735529-BE7F-442B-B32F-73F8FD35FE89}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{B516D8B6-9814-4505-9D48-601861AB000C}', 'Dhaka'),
('{13D606F5-9FB3-4F52-9314-7145A646C33A}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{B516D8B6-9814-4505-9D48-601861AB000C}', 'Khulna'),
('{54FD6006-75A2-4ED3-A585-E8EEC3144320}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{BF914B98-77A4-4DB2-801F-9FFF78D058F1}', 'Bus'),
('{ABFB20EE-DE52-41CD-BE42-B52F8FE72691}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{BF914B98-77A4-4DB2-801F-9FFF78D058F1}', 'Truck'),
('{D68537D8-16AB-44CC-B6F5-2C5160C4F7AB}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{DA389EFE-93EB-45BC-BE22-0E7CCAB8F9C3}', '1'),
('{83C053CE-639D-4062-AB33-B7939266E10B}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{DA389EFE-93EB-45BC-BE22-0E7CCAB8F9C3}', '3'),
('{5C0633F5-8824-4701-A8F5-4CC83D6BC8B0}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{06B3D441-9612-4C61-BA8E-D0536BF6072B}', 'Vromon'),
('{1E718287-D599-4F6D-BF11-566FFE273B0E}', '{57C6F2B9-50CC-4833-A004-83C44D291332}', '{06B3D441-9612-4C61-BA8E-D0536BF6072B}', 'Emni'),
('{D4D37AE6-A4A9-46D4-9BA9-9CF409E24766}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{D891C907-8F40-4955-8B6D-DD1468B47B9A}', 'Fine'),
('{7EA80D30-2AC9-4BAF-BFD5-91E7CA115A98}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{D8487D86-EDF8-44BE-BA21-E0FB091A29F4}', 'fine'),
('{3B3D6C11-104B-4EF5-8796-C95D34D46482}', '{23F5EE83-C673-4949-84C5-69FAFF0763B6}', '{D8487D86-EDF8-44BE-BA21-E0FB091A29F4}', 'not fine'),
('{F4AA75C2-E2EF-49ED-B1E5-3091D8AC55E4}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{CD93ED47-7FCD-47B7-A505-F4A990DAAFD9}', 'Is that okay ?'),
('{DE8E985E-5DD4-4B31-812C-6E1D2F751D03}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{CD93ED47-7FCD-47B7-A505-F4A990DAAFD9}', 'Boring'),
('{54D7A7AC-2B00-4D5C-8423-D76DA487E966}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{CD93ED47-7FCD-47B7-A505-F4A990DAAFD9}', 'Very satisfactory'),
('{C3CB5083-4A6E-4D9D-99B6-C5DED8105069}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{294CC746-DC6E-4745-9734-4BD7EE89C18E}', '>25'),
('{6736A78B-78EB-40A8-9B59-CFBC120F0A52}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{294CC746-DC6E-4745-9734-4BD7EE89C18E}', '>20'),
('{8F8E6650-03C5-45D8-9815-F8555C7F8AE8}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{294CC746-DC6E-4745-9734-4BD7EE89C18E}', '<20'),
('{B91C420D-BA6E-481A-9219-62A93457389F}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{294CC746-DC6E-4745-9734-4BD7EE89C18E}', 'comfortable'),
('{9DE2DE55-3C97-4A2B-8A20-02E81C3945C6}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{08B665B5-21FE-43EE-BFB8-67D416444CFA}', ''),
('{C91EB9D8-9D4E-44E3-B6AA-D308D757C7D9}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{08B665B5-21FE-43EE-BFB8-67D416444CFA}', ''),
('{3E56F7FE-D94F-4A0C-AAE1-EA0BB0928901}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{08B665B5-21FE-43EE-BFB8-67D416444CFA}', ''),
('{322EDBF5-5159-4DF1-BB24-FA4BC297FDB7}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{08B665B5-21FE-43EE-BFB8-67D416444CFA}', ''),
('{41A01212-FE9D-43A0-9A90-F15B5B2C7333}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{08B665B5-21FE-43EE-BFB8-67D416444CFA}', ''),
('{08851991-E4D4-4308-AE27-FE69F0A57CFC}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{28057FD4-2914-466B-B5A6-059272E82FB0}', 'Good'),
('{CC3A69C7-925F-481B-924F-F92684055722}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{28057FD4-2914-466B-B5A6-059272E82FB0}', 'Not good'),
('{8FB7BD92-44F5-4E86-B6B1-8CB51E024C7A}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{28057FD4-2914-466B-B5A6-059272E82FB0}', 'satisfactory'),
('{C7D53E28-F8A8-4EBC-BCD1-B16F1D1C0DAE}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{7908625C-C358-4F0D-964F-2D5CBE845513}', '>25'),
('{FCD0A7FA-3EA5-43FD-B702-CF505EFE9327}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{7908625C-C358-4F0D-964F-2D5CBE845513}', '>20'),
('{2889890C-1F19-4BB6-A0F3-774F4CA76616}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{7908625C-C358-4F0D-964F-2D5CBE845513}', '<20'),
('{D9D3B0EF-9A25-4B72-9C0E-5CCA0221F0E1}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{7908625C-C358-4F0D-964F-2D5CBE845513}', 'comfortable'),
('{7DFF833D-9A11-4286-A0CB-D946F75ADBBE}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{2A9D6F2D-007F-4CDA-984C-B06ED2091EA6}', 'High Level'),
('{BDE94C55-35E3-42F4-9E90-CD19D16F2ECA}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{2A9D6F2D-007F-4CDA-984C-B06ED2091EA6}', 'good enough'),
('{B1F69FCE-F716-4DFF-8C47-4CDDEAF628AA}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{2A9D6F2D-007F-4CDA-984C-B06ED2091EA6}', 'mid level'),
('{72BE972D-15DE-47E0-ADB6-726AFB1D55CF}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{2A9D6F2D-007F-4CDA-984C-B06ED2091EA6}', 'lower level'),
('{C1EB3A6D-DED2-4C90-87E2-025D684F41A1}', '{E76BE5B8-3BBC-4CD8-AF71-3028DEDA2F74}', '{2A9D6F2D-007F-4CDA-984C-B06ED2091EA6}', 'below standard'),
('{E8403414-1DA1-47D7-A003-63A33D64B7A9}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{EFDF66B7-2D02-4A6B-ABCC-0A71BD4442BE}', 'good'),
('{0F854456-0B22-4D85-B6BB-F4E3BB252CC9}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{EFDF66B7-2D02-4A6B-ABCC-0A71BD4442BE}', 'Very Good'),
('{EF8F1DAA-7A04-4837-83AB-DAED88A2CA1A}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{EFDF66B7-2D02-4A6B-ABCC-0A71BD4442BE}', 'Not Good'),
('{2D543D41-15BC-49EC-A114-20FBA8F2ED53}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{043826C3-6AE7-475F-9651-1D93B0B83E97}', '>35'),
('{37337486-23B6-43B8-8FCE-DB73449E724C}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{043826C3-6AE7-475F-9651-1D93B0B83E97}', '>30'),
('{35832F8A-010A-443F-8215-140B95031552}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{C77E6978-F50E-4DD3-92ED-6B6B8B392BE7}', 'Perfect'),
('{267A2F3A-6B38-4C5D-98C3-7380250D4A4B}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{C77E6978-F50E-4DD3-92ED-6B6B8B392BE7}', 'Enough'),
('{BED24C03-042C-4422-9B9D-3C036D89679B}', '{DA0F0043-9A48-459F-A294-2645EE78A769}', '{C77E6978-F50E-4DD3-92ED-6B6B8B392BE7}', 'Not Good Enough');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_question_type`
--

CREATE TABLE `tbl_survey_question_type` (
  `ID` varchar(40) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_survey_question_type`
--

INSERT INTO `tbl_survey_question_type` (`ID`, `Type`) VALUES
('ques_radio', 'Radio Button'),
('{24BFEF59-CE4C-4251-B396-F085E59AAA2A}', 'Multiple Choice '),
('{A7F004CA-C904-4B76-949E-3A6EA3E7525D}', 'abir type'),
('{B543693D-89B6-4385-A947-2F2DE8E2383E}', 'Dropdown Menu'),
('{B7B68D6C-DDFF-4F59-B66B-598075327E11}', 'Rating'),
('{D25929DD-5809-46F2-B17C-8A5F0E26BBAF}', 'Comment Box');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term`
--

CREATE TABLE `tbl_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_term`
--

INSERT INTO `tbl_term` (`ID`, `Name`) VALUES
('{19B15CDF-264C-4924-8608-258673BCC448}', 'B.Sc 8th'),
('{22EDE2D2-D36C-4160-9D2A-80184B8AD35B}', 'B.Sc 1st'),
('{298E9628-8DE2-4742-8F93-0491C01BB152}', 'M.Sc 1st'),
('{9C84629E-11FA-4459-A593-C9AD9CF0D3F2}', 'B.Sc 4th'),
('{9D35C1A5-8091-47BE-AF7E-160C95789EC3}', 'B.Sc 7th'),
('{B8541009-29AC-4988-B17B-91CA3E1E27E3}', 'B.Sc 5th'),
('{C0C2FBD3-75DB-4A6F-BB2A-3F131027A744}', 'B.Sc 6th'),
('{E2D0D30D-654E-4157-8F71-527023AFAB2F}', 'B.Sc 3rd'),
('{F3C92204-C532-4544-9729-858EFBED98A1}', 'M.Sc 3rd'),
('{F78D6E1A-8B11-46D3-A88A-BD6D8DA4532B}', 'M.Sc 2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 'B.Sc 2nd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `IsArchived` tinyint(1) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `LastName`, `IsArchived`, `IsDeleted`) VALUES
('{0B2F4F89-2048-4504-AB17-0412CC624A05}', '020215', 'mohidul@gmail.com', 'test', 'SM Mohidul', 'Islam             ', 0, 0),
('{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '020203', 'zahid@gmail.com', 'test', 'Md. Zahid', 'Islam     ', 0, 1),
('{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '020229', 'mkazi078@uottawa.ca', 'test', 'Kazi Masudul', 'Alam           ', 0, 0),
('{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '020216', 'alamgir@gmail.com', 'test', 'Sk Alamgir', 'Hossain    ', 0, 0),
('{A4F96981-F014-46F6-BB93-87500C3CBB03}', '020208', 'aakth072@uottawa.ca', 'test', 'Aysha', 'Akther        ', 0, 0),
('{B51D020E-1BB9-4FA3-86BF-C32949367885}', '040212', 'saikat@gmail.com', 'test', 'Saikat', 'Mondal  ', 0, 0),
('{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', 'e020202', 'rafiq@gmail.com', 'test', 'Md. Rafiqul', 'Islam ', 0, 0),
('{E797CA0B-22E0-42A0-BB34-BF09094A7A60}', '120203', 'rakibulmilon@gmail.com', 'test', 'Rakibul', 'Islam', 0, 0),
('{EC675CB7-2551-4062-A79E-0EF15481D38A}', 'test new!', 'test@gmail.com', 'test', 'test', 'test ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_discipline`
--

CREATE TABLE `tbl_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_position`
--

CREATE TABLE `tbl_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_position`
--

INSERT INTO `tbl_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(4, '{693F944F-328D-433A-9F94-459D92841645}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(11, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(13, '{B51D020E-1BB9-4FA3-86BF-C32949367885}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(14, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(23, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(24, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(27, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(41, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(42, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{F9C458F2-5298-441F-AE63-7514029760C4}'),
(43, '{B51D020E-1BB9-4FA3-86BF-C32949367885}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(44, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(60, '{E797CA0B-22E0-42A0-BB34-BF09094A7A60}', '{9CC63B6A-99BD-4710-B675-9881B5F7337A}'),
(61, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{3477F777-3F53-408B-9773-249C5937C2B8}'),
(62, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{9CC63B6A-99BD-4710-B675-9881B5F7337A}'),
(65, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{3477F777-3F53-408B-9773-249C5937C2B8}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `TagID` varchar(40) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `IsEmbed` tinyint(1) NOT NULL,
  `CreationDate` date NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_comment`
--

CREATE TABLE `tbl_video_comment` (
  `CommentID` varchar(40) NOT NULL,
  `Comment` varchar(150) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `VideoID` varchar(40) NOT NULL,
  `CommentIDTop` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_tag`
--

CREATE TABLE `tbl_video_tag` (
  `VideoID` varchar(40) NOT NULL,
  `Tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_club`
--
ALTER TABLE `tbl_club`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course_sessional_type`
--
ALTER TABLE `tbl_course_sessional_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_course_type`
--
ALTER TABLE `tbl_course_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion`
--
ALTER TABLE `tbl_discussion`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_category`
--
ALTER TABLE `tbl_discussion_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_comment`
--
ALTER TABLE `tbl_discussion_comment`
  ADD PRIMARY KEY (`CommentID`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_resource`
--
ALTER TABLE `tbl_resource`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `tbl_survey`
--
ALTER TABLE `tbl_survey`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_survey_question_filled`
--
ALTER TABLE `tbl_survey_question_filled`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_survey_question_type`
--
ALTER TABLE `tbl_survey_question_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_term`
--
ALTER TABLE `tbl_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=639;
--
-- AUTO_INCREMENT for table `tbl_survey_question_filled`
--
ALTER TABLE `tbl_survey_question_filled`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
