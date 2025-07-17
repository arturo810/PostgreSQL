
-- SUBSTRING(texto FROM inicio FOR longitud)  CORTAR CADENAS

-- 1._ Extraer caracteres
select 
SUBSTRING(name,1,1) as PRIMERA_LETRA,
name as NOMBRE_COMPLETO
from users;

-- ¿Cómo puedes obtener las 3 primeras letras del campo name?
select 
SUBSTRING(name,1,3) as TRES_LETRAS, 
name as NOMBRE
from users;

-- ¿Cómo puedes extraer las 4 últimas letras del campo name?
select 
SUBSTRING(name,(length(name) - 3)) as ULTIMAS_LETRAS,
name as NOMBRE
from users;

-- Si tienes un nombre de longitud impar, ¿cómo extraes los 2 caracteres del medio?
SELECT 
  name,
  CASE 
    WHEN LENGTH(name) % 2 = 1 THEN 
      SUBSTRING(name FROM FLOOR(LENGTH(name)/2)::int FOR 2)
    ELSE 
      NULL
  END AS dos_letras_centro
FROM users;

-- Si tienes un campo name con el formato 'Apellido, Nombre', ¿cómo puedes extraer solo el nombre?
select 
SUBSTRING(name,0,position(' ' in name)) as NOMBRE,
name
from users;

-- ¿Cómo puedes obtener el primer nombre de un nombre completo como 'Juan Carlos Pérez'?
SELECT 
  name,
  SUBSTRING(
    name 
    , POSITION(' ' IN name) + 1 
  ) AS nombre_medio
FROM users;

-- ¿Cómo puedes obtener las iniciales de un nombre completo, por ejemplo 'Juan Pablo' → 'JP'?
SELECT 
  name,
  SUBSTRING(name FROM 1 FOR 1) || SUBSTRING(name FROM POSITION(' ' IN name) + 1 FOR 1) AS iniciales
FROM users;

-- POSITION encuentra la posición
SELECT 
SUBSTRING(name,0, POSITION(' 'in name)) as nombre,
SUBSTRING(name,POSITION(' ' in name) + 1 ) as apellido
from users;