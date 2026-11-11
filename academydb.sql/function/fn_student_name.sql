CREATE DEFINER=`root`@`localhost` FUNCTION `fn_student_name`(p_id INT) RETURNS varchar(100) CHARSET utf8mb4
    NO SQL
BEGIN
    RETURN CONCAT('student_', p_id);
RETURN 1;
END
