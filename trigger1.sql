DELIMITER $$
CREATE TRIGGER t3 before insert on booking_details
	for each row
	begin
		if (NEW.Class='First') then
			update flight_schedule set fs_cap=fs_cap-new.Num_of_seats where FS_ID=New.Flight and New.Num_of_seats>flight_schedule.fs_cap;
		end if;
		if (NEW.Class='Economy') then
			update flight_schedule set ec_cap=ec_cap-new.Num_of_seats where FS_ID=New.Flight and New.Num_of_seats>flight_schedule.ec_cap;
	#	else
	#		update flight_schedule set bd_cap=bd_cap-new.Num_of_seats where FS_ID=New.Flight and New.Num_of_seats>flight_schedule.bd_cap;
		end if;
		if (NEW.Class='Business') then
			update flight_schedule set bd_cap=bd_cap-new.Num_of_seats where FS_ID=New.Flight and New.Num_of_seats>flight_schedule.bd_cap;
		end if;
	end;
$$
DELIMITER ;