ORDER BY - в порядке от меньшего к большему
ORDER BY ... desc - то же самое только в обратном порядке
count(*) или count(имя_столбца) - ищет сколько всего строк там где укажут 
join берет данные из другой таблицы и можно вывести 2 колонки из разных таблиц,
но работает при условии - on задает как связаны строки
пример:
SELECT st.full_name, sg.group_name
FROM students AS st
JOIN student_groups AS sg
    ON st.student_groups_id = sg.id;
