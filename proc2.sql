DELIMITER $$
create procedure GetAP_ID2
(
IN name varchar(20),
OUT ID int
)
BEGIN
select AP_ID from airport where City=name;
END$$
DELIMITER ;