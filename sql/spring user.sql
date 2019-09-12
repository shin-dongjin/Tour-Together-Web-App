ALTER TABLE MEMBER_INFO ADD LOGIN_TYPE NUMBER;
COMMIT;
ROLLBACK;
@C:\leedaeho\tour_together-master\create.sql;
@C:\leedaeho\tour_together-master\drop.sql;
@C:\leedaeho\tour_together-master\insert.sql;
@C:\leedaeho\tour_together-master\select.sql;

select REPLACE(PHOTO_PATH, '10.10.10.176', 'localhost') from PHOTO;
update PHOTO set PHOTO_PATH = REPLACE(PHOTO_PATH, '10.10.10.176', 'localhost');
update PHOTO set PHOTO_PATH = REPLACE(PHOTO_PATH, '192.168.137.1', 'localhost');

update MEMBER_AUTHORITY set AUTHORITY = 'ROLE_ADMIN' where ID='admin';

