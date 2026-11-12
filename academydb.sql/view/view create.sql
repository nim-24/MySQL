USE academy;

CREATE OR REPLACE VIEW v_clases AS
SELECT id, class_name
FROM clases;

CREATE OR REPLACE VIEW v_student_groups AS
SELECT id, group_name
FROM student_groups;

CREATE OR REPLACE VIEW v_student_grades AS
SELECT id, value_grade, student_id, subject_id
FROM student_grades;

CREATE OR REPLACE VIEW v_teachers AS
SELECT id, full_name, email
FROM teachers;

CREATE OR REPLACE VIEW v_students AS
SELECT id, full_name, email
FROM students;

CREATE OR REPLACE VIEW v_lessons AS
SELECT id, theme_name, subject_id, teacher_id
FROM lessons;

CREATE OR REPLACE VIEW v_shedules AS
SELECT id, date_day, lesson_1_id, lesson_2_id, lesson_3_id
FROM shedules;

CREATE OR REPLACE VIEW v_subjects AS
SELECT id, sub_name
FROM subjects;
