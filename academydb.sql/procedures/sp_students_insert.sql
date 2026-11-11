CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_students_insert`(IN p_count INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE g_id INT;

    WHILE i <= p_count DO
        SELECT id INTO g_id
        FROM student_groups
        ORDER BY RAND()
        LIMIT 1;

        INSERT INTO students (
            full_name, email, phone, student_groups_id,
            birthday_date, created_at
        )
        VALUES (
            fn_student_name(i),
            CONCAT('student_', i, '@gmail.com'),
            CONCAT('+7999000', LPAD(i, 4, '0')),
            g_id,
            DATE_SUB(CURDATE(), INTERVAL (18 + FLOOR(RAND() * 10)) YEAR),
            CURDATE()
        );

        SET i = i + 1;
    END WHILE;
    END
