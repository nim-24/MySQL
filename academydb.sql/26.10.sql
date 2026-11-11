CREATE DEFINER=`root`@`localhost` FUNCTION `random_id_range`(tables_name varchar(50)) RETURNS int
    READS SQL DATA
BEGIN
	declare t_id int;
    select id into t_id
    from teachers order by rand() limit 1;
RETURN t_id;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `add_name_subject`() RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
return elt(floor(rand() * 5) + 1, 
	'информатика', 'биология', 'физика', 'химия', 'бд');
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_teacher_insert`(in count int)
BEGIN
	declare i int default 1;
    declare count int default 1;
    select Count(id)
    into i
    from teachers;
    set count = i + 100;
    
    while i < count do
    insert into teachers(full_name, email, phone, created_at)
    values(
		Concat("teacher", i),
        Concat("teach_", i, "@gmail.com"),
        Concat("+7978", LPAD(i,7,"0")),
        curdate()
    );
		set i = i+1;
    end while; 
END

CREATE PROCEDURE sp_groups_insert ()
BEGIN
declare count int default 0;
declare i int default 1;
select Count(id) into count from student_groups;
set count = count + 10;
	while i <= count do
		if d < 2 then
			set d = i;
		else
			set d = 1;
		end if;
        insert into student_groups(group_name, stud_count, speciality)
        value (
			concat(add_name_cource(), " - ", d),
            floor(rand()*20),
            add_speciality()
	);
        set i = i+1;
    end while;
END
