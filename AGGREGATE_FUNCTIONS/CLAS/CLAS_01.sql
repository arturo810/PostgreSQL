-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX
select first_name, last_name, last_connection from users where last_connection like '221.%';

-- Convertir el Resultado en un Objeto
        SELECT json_build_object(
        'first_name', first_name,
        'last_name', last_name,
        'last_connection', last_connection
        ) AS usuario_json
        FROM users
        WHERE last_connection LIKE '221%';

-- Convertor el Resultado en un Array
        SELECT json_agg(
        json_build_object(
            'first_name', first_name,
            'last_name', last_name,
            'last_connection', last_connection
        )
        ) AS usuarios_array
        FROM users
        WHERE last_connection LIKE '221%';

-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas
        select first_name, last_name, followers from users where followers > 4600;

-- Convertilos en objetos
        select json_build_object( 
        'nombre', first_name,
        'apellido', last_name,
        'seguidores', followers
        ) as objetos from users where followers > 4600;

-- convertir a array

        select
        json_agg(
        json_build_object( 
        'nombre', first_name,
        'apellido', last_name,
        'seguidores', followers
        ) )as array_objetos 

        from users where followers > 4600;



























