USE techdb
;
DELIMITER $$
CREATE PROCEDURE getUserByLogin(
	IN inLogin varchar(100)
)
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

select login,
password_hash,
first_name,
last_name,
email,
activated
from 
hr_user
where 
login = inLogin;

END$$