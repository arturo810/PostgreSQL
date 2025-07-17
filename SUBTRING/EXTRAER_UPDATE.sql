-- Objetivo general:
-- Dividir la columna name (que contiene el nombre completo) en dos nuevas columnas: first_name y last_name.

-- DIVIDIR NOMBRE
select 
 SUBSTRING(name from 1 for position(' ' in name) - 1) as first_name,
 SUBSTRING(name from position(' ' in name ) + 1) as last_name
from users;

-- UPDATE 
update users 
set first_name = SUBSTRING(name from 1 for position(' ' in name) - 1),
last_name = SUBSTRING(name from position(' ' in name ) + 1);

-- VALIDAR 
select * from users;