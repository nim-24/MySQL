вызов процедуры - call имя_процедуры (сколько записей добавит за один раз);

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_teacher_insert`(in count int)
BEGIN
	declare i int default 1;
    
    while i < count do
    insert into teachers(full_name, email, phone, created_at)
    values(
		Concat("teacher", i),
        Concat("teach_", i, "@gmail.com"),
        Concat("+79780000000", LPAD(i,2,"0")),
        curdate()
    );
		set i = i+1;
    end while; 
END


CREATE DEFINER=`root`@`localhost` PROCEDURE ``(in count int)
BEGIN
	declare i int default 1;
    declare count int default 1;
    declare t_id int default 1;
    select Count(id) into i from subjects;
    set count = i + 100;
    
    while i < count do
		select id into t_id from teachers order by rand() limit 1;
		insert into subjects(sub_name, hours, teachers_id)
		values(
			elt(floor(rand() * 5) + 1, 'информатика', 'биология', 'физика', 'химия', 'бд'),
			concat(floor(rand() * 100)),
			t_id
		);
		set i = i+1;
    end while; 
END
