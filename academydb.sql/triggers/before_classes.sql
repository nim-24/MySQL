use academy;
delimiter //
CREATE trigger before_classes
before insert on clases
for each row
begin
if new.places <= 0 then
	signal sqlstate '45000'
	set MESSAGE_TEXT = 'такое количество мест неверное';
end if;
end // 
delimiter ;
