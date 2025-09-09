INSERT INTO ss_t_schools (school_name, school_type, contact, location)
VALUES ('Shanmukha Demo School', 'High School', '9999999999', 'Hyderabad');

INSERT INTO ss_t_grade (school_id, grade_name, display_order)
VALUES 
(1, 'Grade 6', 1),
(1, 'Grade 7', 2),
(1, 'Grade 8', 3);

INSERT INTO ss_t_section (grade_id, section_name, capacity)
VALUES
(1, 'A', 30), (1, 'B', 30),
(2, 'A', 30), (2, 'B', 30),
(3, 'A', 30), (3, 'B', 30);

-- Grade 6A (Section 1)
INSERT INTO ss_t_student (school_id, student_name, dob, gender, admission_no) VALUES
(1, 'Student_6A_1', '2012-01-01', 'M', 'ADM001'),
(1, 'Student_6A_2', '2012-02-01', 'F', 'ADM002'),
(1, 'Student_6A_3', '2012-03-01', 'M', 'ADM003'),
(1, 'Student_6A_4', '2012-04-01', 'F', 'ADM004'),
(1, 'Student_6A_5', '2012-05-01', 'M', 'ADM005'),
(1, 'Student_6A_6', '2012-06-01', 'F', 'ADM006'),
(1, 'Student_6A_7', '2012-07-01', 'M', 'ADM007'),
(1, 'Student_6A_8', '2012-08-01', 'F', 'ADM008'),
(1, 'Student_6A_9', '2012-09-01', 'M', 'ADM009'),
(1, 'Student_6A_10', '2012-10-01', 'F', 'ADM010');

-- Grade 6B (Section 2)
INSERT INTO ss_t_student (school_id, student_name, dob, gender, admission_no) VALUES
(1, 'Student_6B_1', '2012-01-02', 'M', 'ADM011'),
(1, 'Student_6B_2', '2012-02-02', 'F', 'ADM012'),
(1, 'Student_6B_3', '2012-03-02', 'M', 'ADM013'),
(1, 'Student_6B_4', '2012-04-02', 'F', 'ADM014'),
(1, 'Student_6B_5', '2012-05-02', 'M', 'ADM015'),
(1, 'Student_6B_6', '2012-06-02', 'F', 'ADM016'),
(1, 'Student_6B_7', '2012-07-02', 'M', 'ADM017'),
(1, 'Student_6B_8', '2012-08-02', 'F', 'ADM018'),
(1, 'Student_6B_9', '2012-09-02', 'M', 'ADM019'),
(1, 'Student_6B_10', '2012-10-02', 'F', 'ADM020');

-- Grade 7A (Section 3)
INSERT INTO ss_t_student (school_id, student_name, dob, gender, admission_no) VALUES
(1, 'Student_7A_1', '2011-01-01', 'M', 'ADM021'),
(1, 'Student_7A_2', '2011-02-01', 'F', 'ADM022'),
(1, 'Student_7A_3', '2011-03-01', 'M', 'ADM023'),
(1, 'Student_7A_4', '2011-04-01', 'F', 'ADM024'),
(1, 'Student_7A_5', '2011-05-01', 'M', 'ADM025'),
(1, 'Student_7A_6', '2011-06-01', 'F', 'ADM026'),
(1, 'Student_7A_7', '2011-07-01', 'M', 'ADM027'),
(1, 'Student_7A_8', '2011-08-01', 'F', 'ADM028'),
(1, 'Student_7A_9', '2011-09-01', 'M', 'ADM029'),
(1, 'Student_7A_10', '2011-10-01', 'F', 'ADM030');

-- Grade 7B (Section 4)
INSERT INTO ss_t_student (school_id, student_name, dob, gender, admission_no) VALUES
(1, 'Student_7B_1', '2011-01-02', 'M', 'ADM031'),
(1, 'Student_7B_2', '2011-02-02', 'F', 'ADM032'),
(1, 'Student_7B_3', '2011-03-02', 'M', 'ADM033'),
(1, 'Student_7B_4', '2011-04-02', 'F', 'ADM034'),
(1, 'Student_7B_5', '2011-05-02', 'M', 'ADM035'),
(1, 'Student_7B_6', '2011-06-02', 'F', 'ADM036'),
(1, 'Student_7B_7', '2011-07-02', 'M', 'ADM037'),
(1, 'Student_7B_8', '2011-08-02', 'F', 'ADM038'),
(1, 'Student_7B_9', '2011-09-02', 'M', 'ADM039'),
(1, 'Student_7B_10', '2011-10-02', 'F', 'ADM040');

-- Grade 8A (Section 5)
INSERT INTO ss_t_student (school_id, student_name, dob, gender, admission_no) VALUES
(1, 'Student_8A_1', '2010-01-01', 'M', 'ADM041'),
(1, 'Student_8A_2', '2010-02-01', 'F', 'ADM042'),
(1, 'Student_8A_3', '2010-03-01', 'M', 'ADM043'),
(1, 'Student_8A_4', '2010-04-01', 'F', 'ADM044'),
(1, 'Student_8A_5', '2010-05-01', 'M', 'ADM045'),
(1, 'Student_8A_6', '2010-06-01', 'F', 'ADM046'),
(1, 'Student_8A_7', '2010-07-01', 'M', 'ADM047'),
(1, 'Student_8A_8', '2010-08-01', 'F', 'ADM048'),
(1, 'Student_8A_9', '2010-09-01', 'M', 'ADM049'),
(1, 'Student_8A_10', '2010-10-01', 'F', 'ADM050');

-- Grade 8B (Section 6)
INSERT INTO ss_t_student (school_id, student_name, dob, gender, admission_no) VALUES
(1, 'Student_8B_1', '2010-01-02', 'M', 'ADM051'),
(1, 'Student_8B_2', '2010-02-02', 'F', 'ADM052'),
(1, 'Student_8B_3', '2010-03-02', 'M', 'ADM053'),
(1, 'Student_8B_4', '2010-04-02', 'F', 'ADM054'),
(1, 'Student_8B_5', '2010-05-02', 'M', 'ADM055'),
(1, 'Student_8B_6', '2010-06-02', 'F', 'ADM056'),
(1, 'Student_8B_7', '2010-07-02', 'M', 'ADM057'),
(1, 'Student_8B_8', '2010-08-02', 'F', 'ADM058'),
(1, 'Student_8B_9', '2010-09-02', 'M', 'ADM059'),
(1, 'Student_8B_10', '2010-10-02', 'F', 'ADM060');


-- Grade 6A → Section 1
INSERT INTO ss_t_student_academic_map (student_id, school_id, grade_id, section_id, academic_year)
SELECT student_id, 1, 1, 1, '2025-2026'
FROM ss_t_student WHERE admission_no BETWEEN 'ADM001' AND 'ADM010';

-- Grade 6B → Section 2
INSERT INTO ss_t_student_academic_map (student_id, school_id, grade_id, section_id, academic_year)
SELECT student_id, 1, 1, 2, '2025-2026'
FROM ss_t_student WHERE admission_no BETWEEN 'ADM011' AND 'ADM020';

-- Grade 7A → Section 3
INSERT INTO ss_t_student_academic_map (student_id, school_id, grade_id, section_id, academic_year)
SELECT student_id, 1, 2, 3, '2025-2026'
FROM ss_t_student WHERE admission_no BETWEEN 'ADM021' AND 'ADM030';

-- Grade 7B → Section 4
INSERT INTO ss_t_student_academic_map (student_id, school_id, grade_id, section_id, academic_year)
SELECT student_id, 1, 2, 4, '2025-2026'
FROM ss_t_student WHERE admission_no BETWEEN 'ADM031' AND 'ADM040';

-- Grade 8A → Section 5
INSERT INTO ss_t_student_academic_map (student_id, school_id, grade_id, section_id, academic_year)
SELECT student_id, 1, 3, 5, '2025-2026'
FROM ss_t_student WHERE admission_no BETWEEN 'ADM041' AND 'ADM050';

-- Grade 8B → Section 6
INSERT INTO ss_t_student_academic_map (student_id, school_id, grade_id, section_id, academic_year)
SELECT student_id, 1, 3, 6, '2025-2026'
FROM ss_t_student WHERE admission_no BETWEEN 'ADM051' AND 'ADM060';


INSERT INTO ss_t_teacher (school_id, teacher_name, email, phone, gender, qualification)
VALUES
(1, 'Ravi', 'ravi@school.com', '9000000001', 'M', 'B.Ed'),
(1, 'Sita', 'sita@school.com', '9000000002', 'F', 'M.Ed'),
(1, 'Anil', 'anil@school.com', '9000000003', 'M', 'B.Ed'),
(1, 'Radha', 'radha@school.com', '9000000004', 'F', 'M.Sc'),
(1, 'Suresh', 'suresh@school.com', '9000000005', 'M', 'B.Tech'),
(1, 'Lakshmi', 'lakshmi@school.com', '9000000006', 'F', 'B.Ed'),
(1, 'Kumar', 'kumar@school.com', '9000000007', 'M', 'M.Sc'),
(1, 'Priya', 'priya@school.com', '9000000008', 'F', 'B.Ed');


-- Insert subjects
INSERT INTO ss_t_subject (school_id, subject_name, code)
VALUES 
(1, 'Mathematics', 'MATH'),
(1, 'Science', 'SCI'),
(1, 'English', 'ENG'),
(1, 'Social Studies', 'SST'),
(1, 'Telugu', 'TEL'),
(1, 'Computer', 'COMP');

-- Ravi → Grade 6A (Math), Grade 7B (English)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(1,1,1,1,1),  -- Math, Grade 6A
(1,1,2,2,3);  -- English, Grade 7B

-- Sita → Grade 6A (Science), Grade 7A (English)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(2,1,1,1,2),  -- Science, Grade 6A
(2,1,2,3,3);  -- English, Grade 7A

-- Anil → Grade 6B (Math), Grade 7A (Social Studies)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(3,1,1,2,1),  -- Math, Grade 6B
(3,1,2,3,4);  -- Social Studies, Grade 7A

-- Radha → Grade 7A (Science), Grade 7B (English)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(4,1,2,3,2),  -- Science, Grade 7A
(4,1,2,4,3);  -- English, Grade 7B

-- Suresh → Grade 7B (English), Grade 8A (Math)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(5,1,2,4,3),  -- English, Grade 7B
(5,1,3,5,1);  -- Math, Grade 8A

-- Lakshmi → Grade 8A (Computer), Grade 8B (English)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(6,1,3,5,6),  -- Computer, Grade 8A
(6,1,3,6,3);  -- English, Grade 8B

-- Kumar → Grade 8B (Science), Grade 6A (Social Studies)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(7,1,3,6,2),  -- Science, Grade 8B
(7,1,1,1,4);  -- Social Studies, Grade 6A

-- Priya → Grade 6B (Telugu), Grade 8A (English)
INSERT INTO ss_t_teacher_section_map 
(teacher_id, school_id, grade_id, section_id, subject_id)
VALUES 
(8,1,1,2,5),  -- Telugu, Grade 6B
(8,1,3,5,3);  -- English, Grade 8A

INSERT INTO ss_t_attendance_type (code, description)
VALUES 
('P', 'Present'),
('A', 'Absent'),
('L', 'Late');

-- Example: Student 1, 30 days of August 2025
-- First 24 days = Present, last 6 = Absent

INSERT INTO ss_t_attendance_register (student_id, attendance_date, attendance_type_id, remarks)
VALUES
(1, '2025-08-01', 1, 'Present'),
(1, '2025-08-02', 1, 'Present'),
(1, '2025-08-03', 1, 'Present'),
(1, '2025-08-04', 1, 'Present'),
(1, '2025-08-05', 1, 'Present'),
(1, '2025-08-06', 1, 'Present'),
(1, '2025-08-07', 1, 'Present'),
(1, '2025-08-08', 1, 'Present'),
(1, '2025-08-09', 1, 'Present'),
(1, '2025-08-10', 1, 'Present'),
(1, '2025-08-11', 1, 'Present'),
(1, '2025-08-12', 1, 'Present'),
(1, '2025-08-13', 1, 'Present'),
(1, '2025-08-14', 1, 'Present'),
(1, '2025-08-15', 1, 'Present'),
(1, '2025-08-16', 1, 'Present'),
(1, '2025-08-17', 1, 'Present'),
(1, '2025-08-18', 1, 'Present'),
(1, '2025-08-19', 1, 'Present'),
(1, '2025-08-20', 1, 'Present'),
(1, '2025-08-21', 1, 'Present'),
(1, '2025-08-22', 1, 'Present'),
(1, '2025-08-23', 1, 'Present'),
(1, '2025-08-24', 1, 'Present'),
(1, '2025-08-25', 2, 'Absent'),
(1, '2025-08-26', 2, 'Absent'),
(1, '2025-08-27', 2, 'Absent'),
(1, '2025-08-28', 2, 'Absent'),
(1, '2025-08-29', 2, 'Absent'),
(1, '2025-08-30', 2, 'Absent');

LOAD DATA LOCAL INFILE 'C:/Users/rames/Documents/attendance.csv'
INTO TABLE ss_t_attendance_register
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(student_id, attendance_date, attendance_type_id, remarks);

INSERT INTO ss_t_attendance_register (student_id, attendance_date, attendance_type_id, remarks)
SELECT t.student_id, STR_TO_DATE(t.attendance_date, '%d-%m-%Y'), t.attendance_type_id, t.remarks
FROM ss_t_attendance_register_temp t
JOIN ss_t_student s ON t.student_id = s.student_id;

-- Ravi gives 3 homework
INSERT INTO ss_t_homework (teacher_id, school_id, grade_id, section_id, subject_id, homework_date, description)
VALUES
(1,1,1,1,1,'2025-08-01','Maths homework on fractions'),
(1,1,2,2,3,'2025-08-02','English grammar exercises'),
(1,1,1,1,1,'2025-08-05','Maths word problems');

-- Sita gives 3 homework
INSERT INTO ss_t_homework (teacher_id, school_id, grade_id, section_id, subject_id, homework_date, description)
VALUES
(2,1,1,1,2,'2025-08-01','Science project on plants'),
(2,1,2,3,3,'2025-08-03','English essay writing'),
(2,1,2,3,3,'2025-08-06','English comprehension practice');

-- Ravi writes 2 diary notes
INSERT INTO ss_t_class_diary (teacher_id, school_id, grade_id, section_id, diary_date, notes)
VALUES
(1,1,1,1,'2025-08-01','Taught fractions today'),
(1,1,2,2,'2025-08-02','Completed English grammar chapter');

-- Sita writes 2 diary notes
INSERT INTO ss_t_class_diary (teacher_id, school_id, grade_id, section_id, diary_date, notes)
VALUES
(2,1,1,1,'2025-08-01','Science practical lab'),
(2,1,2,3,'2025-08-03','English essay corrections');

INSERT INTO ss_t_exam (school_id, exam_name, start_date, end_date)
VALUES
(1, 'Mid Term Exam', '2025-09-01', '2025-09-10'),
(1, 'Final Exam', '2026-03-01', '2026-03-15');

-- Student 1
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(1, 1, 1, 78),(1, 1, 2, 65),(1, 1, 3, 72);

-- Student 2
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(2, 1, 1, 55),(2, 1, 2, 80),(2, 1, 3, 68);

-- Student 3
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(3, 1, 1, 60),(3, 1, 2, 74),(3, 1, 3, 82);

-- Student 4
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(4, 1, 1, 88),(4, 1, 2, 69),(4, 1, 3, 91);

-- Student 5
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(5, 1, 1, 47),(5, 1, 2, 59),(5, 1, 3, 66);

-- Student 6
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(6, 1, 1, 72),(6, 1, 2, 85),(6, 1, 3, 77);

-- Student 7
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(7, 1, 1, 90),(7, 1, 2, 81),(7, 1, 3, 86);

-- Student 8
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(8, 1, 1, 65),(8, 1, 2, 71),(8, 1, 3, 70);

-- Student 9
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(9, 1, 1, 59),(9, 1, 2, 67),(9, 1, 3, 73);

-- Student 10
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(10, 1, 1, 82),(10, 1, 2, 78),(10, 1, 3, 84);

-- Student 11
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(11, 1, 1, 63),(11, 1, 2, 75),(11, 1, 3, 69);

-- Student 12
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(12, 1, 1, 87),(12, 1, 2, 92),(12, 1, 3, 90);

-- Student 13
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(13, 1, 1, 71),(13, 1, 2, 64),(13, 1, 3, 76);

-- Student 14
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(14, 1, 1, 68),(14, 1, 2, 72),(14, 1, 3, 74);

-- Student 15
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(15, 1, 1, 50),(15, 1, 2, 61),(15, 1, 3, 58);

-- Student 16
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(16, 1, 1, 77),(16, 1, 2, 83),(16, 1, 3, 79);

-- Student 17
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(17, 1, 1, 81),(17, 1, 2, 74),(17, 1, 3, 88);

-- Student 18
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(18, 1, 1, 66),(18, 1, 2, 71),(18, 1, 3, 62);

-- Student 19
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(19, 1, 1, 91),(19, 1, 2, 85),(19, 1, 3, 89);

-- Student 20
INSERT INTO ss_t_marks (student_id, exam_id, subject_id, marks_obtained) VALUES
(20, 1, 1, 75),(20, 1, 2, 68),(20, 1, 3, 80);
