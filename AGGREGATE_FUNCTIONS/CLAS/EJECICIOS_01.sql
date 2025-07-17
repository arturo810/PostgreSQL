-- 20 EJERCICIOS DE CONSULTA EN SQL CON LA TABLA users

-- 🔸 ENTRE FECHAS Y RANGOS (BETWEEN)

-- ¿Qué usuarios tienen entre 1000 y 15000 followers? 
	select first_name from users where followers between 1000 and 1500;
-- El total de seguidores entre 1000 y 1500 son 100 

-- ¿Qué usuarios siguen a entre 5000 y 20000 personas?
    select first_name from users where followers between 5000 and 20000;
-- El total es de 0 seguidores entre los ranfos 5000 y 20000

--¿Qué usuarios tienen entre 500 y 1000 followers y entre 10.000 y 20.000 following?
    select * from users where followers BETWEEN 500 AND 1000 AND 
    following BETWEEN 10000 AND 20000;

-- ¿Qué usuarios tienen una cantidad de followers igual a following?
    select * from users where followers = following;

-- ¿Qué usuarios tienen más followers que following y además están entre los 1000 y 5000 followers?
    select * from users where followers > following and followers between 1000 and 5000 order by followers asc ;

-- ¿Cuál es el dominio del correo electrónico? (por ejemplo: '@gmail.com')
select substring(email from position('@' in email)) as DOMINIO from users;

-- Extrae el nombre de usuario (ante antes del @) del campo email.
SELECT 
  SUBSTRING(
    email 
    FROM POSITION('.' IN email) + 1 
    FOR POSITION('@' IN email) - POSITION('.' IN email) - 1
  ) AS nombre_entre,
  email
FROM users;

-- ¿Cuál es el subdominio del sitio web (por ejemplo, 'leni.ar' desde 'http://leni.ar/ma')?

SELECT 
  REGEXP_REPLACE(website, '^https?://([^/]+)/.*$', '\1') AS subdominio,
  website
FROM users;

-- ^https?:// → reconoce http:// o https://
-- ([^/]+) → captura el dominio (todo lo que está antes del siguiente /)
-- .*$ → ignora lo que viene después
-- \1 → devuelve solo lo que capturó: el subdominio

-- Muestra las tres primeras letras del país de cada usuario.
select substring(country from 1 for 3) LETRAS_PAIS, country from users;

