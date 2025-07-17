-- Agregar Columna
ALTER TABLE nombre_tabla
ADD COLUMN nueva_columna tipo_dato;

--Eliminar Columna 
ALTER TABLE nombre_tabla
DROP COLUMN nombre_columna;

-- Cambiar el Nombre de una Columna
ALTER TABLE nombre_tabla
RENAME COLUMN nombre_viejo TO nombre_nuevo;

-- Cambiar Nombre de la Tabla
ALTER TABLE nombre_viejo
RENAME TO nombre_nuevo;

