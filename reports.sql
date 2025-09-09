
-- REPORTS.SQL – School Database Assignment
-- Contains queries for Attendance, Marks, and Combined Reports

-- 1. Show all tables
SHOW TABLES;

-- 2. Count of students
SELECT COUNT(*) AS total_students FROM ss_t_student;

-- 3. Attendance Summary per Student
SELECT s.student_id, s.student_name,
       SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END) AS present_days,
       SUM(CASE WHEN a.attendance_type_id = 2 THEN 1 ELSE 0 END) AS absent_days,
       SUM(CASE WHEN a.attendance_type_id = 3 THEN 1 ELSE 0 END) AS late_days,
       COUNT(*) AS total_days,
       ROUND(SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS attendance_pct
FROM ss_t_student s
JOIN ss_t_attendance_register a ON s.student_id = a.student_id
GROUP BY s.student_id, s.student_name
ORDER BY attendance_pct DESC;

-- 4. Students with <80% Attendance
SELECT s.student_id, s.student_name,
       ROUND(SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS attendance_pct
FROM ss_t_student s
JOIN ss_t_attendance_register a ON s.student_id = a.student_id
GROUP BY s.student_id, s.student_name
HAVING attendance_pct < 80;

-- 5. Top 5 Students by Attendance %
SELECT s.student_id, s.student_name,
       ROUND(SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS attendance_pct
FROM ss_t_student s
JOIN ss_t_attendance_register a ON s.student_id = a.student_id
GROUP BY s.student_id, s.student_name
ORDER BY attendance_pct DESC
LIMIT 5;

-- 6. Average Marks Per Student (for each exam)
SELECT s.student_id, s.student_name, e.exam_name,
       ROUND(AVG(m.marks_obtained),2) AS avg_marks
FROM ss_t_marks m
JOIN ss_t_student s ON m.student_id = s.student_id
JOIN ss_t_exam e ON m.exam_id = e.exam_id
GROUP BY s.student_id, s.student_name, e.exam_name
ORDER BY avg_marks DESC;

-- 7. Subject-Wise Average Marks
SELECT sub.subject_name, e.exam_name,
       ROUND(AVG(m.marks_obtained),2) AS avg_marks
FROM ss_t_marks m
JOIN ss_t_subject sub ON m.subject_id = sub.subject_id
JOIN ss_t_exam e ON m.exam_id = e.exam_id
GROUP BY sub.subject_name, e.exam_name
ORDER BY e.exam_name, avg_marks DESC;

-- 8. Top 5 Students in Mid Term Exam
SELECT s.student_id, s.student_name, e.exam_name,
       SUM(m.marks_obtained) AS total_marks
FROM ss_t_marks m
JOIN ss_t_student s ON m.student_id = s.student_id
JOIN ss_t_exam e ON m.exam_id = e.exam_id
WHERE e.exam_name = 'Mid Term Exam'
GROUP BY s.student_id, s.student_name, e.exam_name
ORDER BY total_marks DESC
LIMIT 5;

-- 9. Individual Student Report Card (example: Student 1)
SELECT s.student_id, s.student_name, e.exam_name, sub.subject_name,
       m.marks_obtained, m.max_marks
FROM ss_t_marks m
JOIN ss_t_student s ON m.student_id = s.student_id
JOIN ss_t_exam e ON m.exam_id = e.exam_id
JOIN ss_t_subject sub ON m.subject_id = sub.subject_id
WHERE s.student_id = 1;

-- 10. Student Performance Summary (Attendance % + Avg Marks)
SELECT s.student_id, s.student_name,
       ROUND(SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS attendance_pct,
       ROUND(AVG(m.marks_obtained),2) AS avg_marks
FROM ss_t_student s
LEFT JOIN ss_t_attendance_register a ON s.student_id = a.student_id
LEFT JOIN ss_t_marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
ORDER BY avg_marks DESC, attendance_pct DESC;

-- 11. Identify Students at Risk (Low Attendance & Low Marks)
SELECT s.student_id, s.student_name,
       ROUND(SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS attendance_pct,
       ROUND(AVG(m.marks_obtained),2) AS avg_marks
FROM ss_t_student s
LEFT JOIN ss_t_attendance_register a ON s.student_id = a.student_id
LEFT JOIN ss_t_marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
HAVING attendance_pct < 75 AND avg_marks < 40;

-- 12. Best Overall Students (High Marks + High Attendance)
SELECT s.student_id, s.student_name,
       ROUND(SUM(CASE WHEN a.attendance_type_id = 1 THEN 1 ELSE 0 END)/COUNT(*)*100,2) AS attendance_pct,
       ROUND(AVG(m.marks_obtained),2) AS avg_marks
FROM ss_t_student s
LEFT JOIN ss_t_attendance_register a ON s.student_id = a.student_id
LEFT JOIN ss_t_marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
HAVING attendance_pct >= 90 AND avg_marks >= 75
ORDER BY avg_marks DESC, attendance_pct DESC;
