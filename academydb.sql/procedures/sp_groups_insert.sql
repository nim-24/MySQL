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
