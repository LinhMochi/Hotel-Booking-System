alter table Promotion
alter column [create] varchar(20);

alter table HotelPromotions
alter column [create] varchar(20);

alter table HotelServices
alter column [create] varchar(20);

Alter table Reversations
Alter column bookDate varchar(20);

ALTER TABLE HotelRating
Alter column rateAt varchar(20);

alter table HotelServices
alter column [from] date;

alter table HotelServices
alter column [to] date;

--reset create because change datatype
update HotelServices set [create] = '2022-06-13 17:15:00';

--rename 
EXEC sp_rename 'Reversations', 'Reservations' 
EXEC sp_rename 'ReversationServices', 'ReservationService' 