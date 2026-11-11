вызов процедуры - call имя_процедуры (сколько записей добавит за один раз);

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_subjects_insert`(in count int)
BEGIN
   declare i int default 1;
    declare count int default 1;
    declare t_id int default 1;
    select Count(id) into i from subjects;
    set count = i + 100;
    
    while i < count do
        set t_id = random_id_range("teachers");
		insert into subjects(sub_name, hours, teachers_id)
        
		values(
			add_name_subject(),
			floor(rand() * 100),
			t_id
		);
		set i = i+1;
    end while; 
END
