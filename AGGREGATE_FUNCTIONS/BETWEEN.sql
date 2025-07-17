
select 
UPPER(concat(first_name,' ',last_name))as NOMBRE_COMPLETO,
followers
from users where followers between 4400 and 4500;