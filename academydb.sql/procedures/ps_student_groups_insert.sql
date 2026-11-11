CREATE DEFINER=`root`@`localhost` PROCEDURE `ps_student_groups_insert`(IN p_count INT)
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= p_count DO
        INSERT INTO student_groups (group_name, stud_count, speciality)
        VALUES (
            fn_group_name(i),
            FLOOR(RAND() * 30) + 10,
            ELT(
                FLOOR(RAND() * 4) + 1,
                'Информатика',
                'Экономика',
                'Дизайн',
                'Менеджмент'
            )
        );

        SET i = i + 1;
    END WHILE;
END
