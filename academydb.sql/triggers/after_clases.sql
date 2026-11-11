use academy;
delimiter //
CREATE trigger after_clases
after insert on academy.clases
for each row
begin
INSERT INTO clases_log (clas_id, action, new_places)
VALUES (NEW.id, 'INSERT', NEW.places);
end//
delimiter ;
