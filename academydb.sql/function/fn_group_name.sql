CREATE DEFINER=`root`@`localhost` FUNCTION `fn_group_name`(p_number INT) RETURNS varchar(50) CHARSET utf8mb4
    NO SQL
BEGIN
    RETURN CONCAT('Группа_', p_number);
END
