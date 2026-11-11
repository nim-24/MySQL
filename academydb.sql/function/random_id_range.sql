CREATE DEFINER=`root`@`localhost` FUNCTION `random_id_range`(tables_name varchar(50)) RETURNS int
    READS SQL DATA
BEGIN
	declare t_id int;
    select id into t_id
    from teachers order by rand() limit 1;
RETURN t_id;
END
