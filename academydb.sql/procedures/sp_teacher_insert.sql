CREATE DEFINER=`root`@`localhost` PROCEDURE ``(in count int)
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
