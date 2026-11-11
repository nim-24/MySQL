use academy;   
call sp_subjects_insert(11);

select *
from teachers;

select floor(rand() * 100);

select id from teachers order by rand() limit 1;

select elt(floor(rand() * 5) + 1, 
'информатика', 'биология', 'физика', 'химия', 'бд');

select random_id_range('teachers');

show triggers;
insert into clases (class_name, places)
values ("красная", 20);
