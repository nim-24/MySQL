CREATE DEFINER=`root`@`localhost` FUNCTION `add_name_subject`() RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
return elt(floor(rand() * 5) + 1, 
	'информатика', 'биология', 'физика', 'химия', 'бд');
END
