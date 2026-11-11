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
