DELIMITER $$
create procedure CalIndFare
(
IN passID int,
out cost float
)
BEGIN
select f.fare-f.fare*d.discounts/100 from Discounts d,booking_details b,passenger p,fare f where p.Category=d.Cateogory and p.PayerID=b.PayerID and f.FareID=b.FareID and P_ID=passID;
END$$
DELIMITER ;
