CREATE TABLE ss_t_schools (
    school_id INT AUTO_INCREMENT PRIMARY KEY,
    school_name VARCHAR(200) NOT NULL,
    school_type VARCHAR(50),
    contact VARCHAR(50),
    location VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE ss_t_grade (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    school_id INT NOT NULL,
    grade_name VARCHAR(50) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    display_order INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_grade_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id)
);
CREATE TABLE ss_t_section (
    section_id INT AUTO_INCREMENT PRIMARY KEY,
    grade_id INT NOT NULL,
    section_name VARCHAR(10) NOT NULL,
    capacity INT DEFAULT 30,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_section_grade FOREIGN KEY (grade_id) REFERENCES ss_t_grade(grade_id)
);
 

CREATE TABLE ss_t_student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    school_id INT NOT NULL,
    student_name VARCHAR(200) NOT NULL,
    dob DATE,
    gender ENUM('M','F') NOT NULL,
    admission_no VARCHAR(50) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_student_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id)
);
CREATE TABLE ss_t_student_academic_map (
    map_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    school_id INT NOT NULL,
    grade_id INT NOT NULL,
    section_id INT NOT NULL,
    academic_year VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_sam_student FOREIGN KEY (student_id) REFERENCES ss_t_student(student_id),
    CONSTRAINT fk_sam_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id),
    CONSTRAINT fk_sam_grade FOREIGN KEY (grade_id) REFERENCES ss_t_grade(grade_id),
    CONSTRAINT fk_sam_section FOREIGN KEY (section_id) REFERENCES ss_t_section(section_id)
);
CREATE TABLE ss_t_teacher (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    school_id INT NOT NULL,
    teacher_name VARCHAR(150) NOT NULL,
    email VARCHAR(150),
    phone VARCHAR(50),
    gender ENUM('M','F'),
    qualification VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_teacher_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id)
);
CREATE TABLE ss_t_subject (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    school_id INT NOT NULL,
    subject_name VARCHAR(100) NOT NULL,
    code VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_subject_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id)
);
CREATE TABLE ss_t_teacher_section_map (
    map_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT NOT NULL,
    school_id INT NOT NULL,
    grade_id INT NOT NULL,
    section_id INT NOT NULL,
    subject_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_map_teacher FOREIGN KEY (teacher_id) REFERENCES ss_t_teacher(teacher_id),
    CONSTRAINT fk_map_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id),
    CONSTRAINT fk_map_grade FOREIGN KEY (grade_id) REFERENCES ss_t_grade(grade_id),
    CONSTRAINT fk_map_section FOREIGN KEY (section_id) REFERENCES ss_t_section(section_id),
    CONSTRAINT fk_map_subject FOREIGN KEY (subject_id) REFERENCES ss_t_subject(subject_id)
);
CREATE TABLE ss_t_attendance_type (
    attendance_type_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) UNIQUE NOT NULL,
    description VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE ss_t_attendance_register (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    attendance_type_id INT NOT NULL,
    remarks VARCHAR(200),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_att_student FOREIGN KEY (student_id) REFERENCES ss_t_student(student_id),
    CONSTRAINT fk_att_type FOREIGN KEY (attendance_type_id) REFERENCES ss_t_attendance_type(attendance_type_id),
    UNIQUE(student_id, attendance_date) -- avoid duplicates
);
CREATE TABLE ss_t_homework (
    homework_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT NOT NULL,
    school_id INT NOT NULL,
    grade_id INT NOT NULL,
    section_id INT NOT NULL,
    subject_id INT NOT NULL,
    homework_date DATE NOT NULL,
    description VARCHAR(500) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_hw_teacher FOREIGN KEY (teacher_id) REFERENCES ss_t_teacher(teacher_id),
    CONSTRAINT fk_hw_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id),
    CONSTRAINT fk_hw_grade FOREIGN KEY (grade_id) REFERENCES ss_t_grade(grade_id),
    CONSTRAINT fk_hw_section FOREIGN KEY (section_id) REFERENCES ss_t_section(section_id),
    CONSTRAINT fk_hw_subject FOREIGN KEY (subject_id) REFERENCES ss_t_subject(subject_id)
);
CREATE TABLE ss_t_class_diary (
    diary_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT NOT NULL,
    school_id INT NOT NULL,
    grade_id INT NOT NULL,
    section_id INT NOT NULL,
    diary_date DATE NOT NULL,
    notes VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_diary_teacher FOREIGN KEY (teacher_id) REFERENCES ss_t_teacher(teacher_id),
    CONSTRAINT fk_diary_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id),
    CONSTRAINT fk_diary_grade FOREIGN KEY (grade_id) REFERENCES ss_t_grade(grade_id),
    CONSTRAINT fk_diary_section FOREIGN KEY (section_id) REFERENCES ss_t_section(section_id)
);
CREATE TABLE ss_t_exam (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    school_id INT NOT NULL,
    exam_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_exam_school FOREIGN KEY (school_id) REFERENCES ss_t_schools(school_id)
);
CREATE TABLE ss_t_marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    exam_id INT NOT NULL,
    subject_id INT NOT NULL,
    marks_obtained DECIMAL(5,2),
    max_marks DECIMAL(5,2) DEFAULT 100,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_marks_student FOREIGN KEY (student_id) REFERENCES ss_t_student(student_id),
    CONSTRAINT fk_marks_exam FOREIGN KEY (exam_id) REFERENCES ss_t_exam(exam_id),
    CONSTRAINT fk_marks_subject FOREIGN KEY (subject_id) REFERENCES ss_t_subject(subject_id)
);

