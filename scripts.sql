-- Listar los nombres de los usuarios
SELECT nombre FROM `usuarios`;

-- Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT nombre, sexo, MAX(saldo) FROM `usuarios` WHERE sexo = 'M';

-- Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono, marca from `usuarios` where marca = 'NOKIA' or marca = 'BLACKBERRY' or marca = 'SONY';

-- Contar los usuarios sin saldo o inactivos
SELECT COUNT(*) FROM `usuarios` WHERE not activo or saldo <= 0;

-- Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario FROM `usuarios` WHERE nivel IN(1,2,3);

-- Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM `usuarios` WHERE saldo <= 300;

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
SELECT sum(saldo) FROM `usuarios` WHERE compania = 'NEXTEL';

-- Contar el número de usuarios por compañía telefónica
SELECT compania, count(usuario) FROM `usuarios` GROUP BY compania;

-- Contar el número de usuarios por nivel
SELECT nivel, count(usuario) FROM `usuarios` GROUP BY nivel;

-- Listar el login de los usuarios con nivel 2
SELECT usuario FROM `usuarios` WHERE nivel = 2;

-- Mostrar el email de los usuarios que usan gmail
SELECT email FROM `usuarios` WHERE email LIKE '%@gmail.com';

-- Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono, marca from `usuarios` where marca = 'LG' or marca = 'SAMSUNG' or marca = 'MOTOROLA';
SELECT nombre, telefono, marca from `usuarios` where marca in('LG','SAMSUNG','MOTOROLA');

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono, marca from `usuarios` where not marca = 'LG' AND not marca = 'SAMSUNG' AND not marca = 'MOTOROLA';
SELECT nombre, telefono, marca from `usuarios` where marca not in('LG','SAMSUNG');

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
SELECT usuario, telefono from `usuarios` WHERE compania = 'IUSACELL';

-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
SELECT usuario, telefono from `usuarios` WHERE compania not in( 'TELCEL');
SELECT usuario, telefono from `usuarios` WHERE compania <> 'TELCEL';

-- Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) from `usuarios` WHERE marca = 'NOKIA';

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
SELECT usuario, telefono from `usuarios` WHERE compania = 'IUSACELL' or compania = 'AXEL';

-- Mostrar el email de los usuarios que no usan yahoo
SELECT telefono from `usuarios` WHERE email NOT LIKE '%yahoo%';

-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono from `usuarios` WHERE compania NOT in( 'TELCEL','IUSACELL');

-- Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
SELECT usuario, telefono from `usuarios` WHERE compania = 'UNEFON';

-- Listar las diferentes marcas de celular en orden alfabético descendentemente
SELECT DISTINCT marca from `usuarios` ORDER BY marca DESC;

-- Listar las diferentes compañías en orden alfabético aleatorio
SELECT DISTINCT compania from `usuarios` ORDER BY RAND();

-- Listar el login de los usuarios con nivel 0 o 2
SELECT usuario from `usuarios` where nivel in (0,2);

-- Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) FROM `usuarios` WHERE marca = 'LG';

-- Listar el login de los usuarios con nivel 1 o 3
SELECT usuario FROM `usuarios` WHERE nivel in(1,3);

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
SELECT nombre, telefono FROM `usuarios` WHERE not marca = 'BLACKBERRY';
SELECT nombre, telefono FROM `usuarios` WHERE marca <> 'BLACKBERRY';

-- Listar el login de los usuarios con nivel 3
SELECT usuario FROM `usuarios` WHERE nivel = 3;

-- Listar el login de los usuarios con nivel 0
SELECT usuario FROM `usuarios` WHERE nivel = 0;

-- Listar el login de los usuarios con nivel 1
SELECT usuario FROM `usuarios` WHERE nivel = 1;

-- Contar el número de usuarios por sexo
SELECT COUNT(sexo) as Hombres, (SELECT COUNT(sexo) FROM `usuarios` WHERE sexo = 'M')as Mujeres FROM `usuarios` WHERE sexo = 'H';
SELECT sexo, COUNT(*) from `usuarios` GROUP BY sexo;

-- Listar el login y teléfono de los usuarios con compañía telefónica AT&T
SELECT usuario, telefono from `usuarios` WHERE compania = 'AT&T';

-- Listar las diferentes compañías en orden alfabético descendentemente
SELECT DISTINCT compania from `usuarios` ORDER BY compania DESC;

-- Listar el login de los usuarios inactivos
SELECT usuario from `usuarios` where not activo;

-- Listar los números de teléfono sin saldo
SELECT telefono from `usuarios` where saldo <= 0;

-- Calcular el saldo mínimo de los usuarios de sexo “Hombre”
SELECT min(saldo) from `usuarios` where sexo = 'H';

-- Listar los números de teléfono con saldo mayor a 300
SELECT telefono from `usuarios` where saldo >= 300;

-- Contar el número de usuarios por marca de teléfono
SELECT COUNT(usuario) from `usuarios` GROUP BY marca;

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
SELECT nombre, telefono from `usuarios` WHERE marca <> 'LG';

-- Listar las diferentes compañías en orden alfabético ascendentemente
SELECT DISTINCT compania from `usuarios` ORDER BY compania ASC;

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
SELECT SUM(saldo) from `usuarios` where compania = 'UNEFON';

-- Mostrar el email de los usuarios que usan hotmail
SELECT email from `usuarios` where email LIKE '%hotmail%';

-- Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre from `usuarios` where not activo OR saldo <= 0;

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
SELECT usuario, telefono from `usuarios` where compania in('IUSACELL','TELCEL');

-- Listar las diferentes marcas de celular en orden alfabético ascendentemente
SELECT DISTINCT marca from `usuarios` ORDER BY marca ASC;

-- Listar las diferentes marcas de celular en orden alfabético aleatorio
SELECT DISTINCT marca from `usuarios` ORDER BY RAND();

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
SELECT usuario, telefono from `usuarios` where compania in('IUSACELL','UNEFON');

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
SELECT nombre, telefono from `usuarios` where marca not in('MOTOROLA','NOKIA');

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCEL
SELECT sum(saldo) from `usuarios` where compania = 'TELCEL';

-- ¿Qué provincias no tenemos clientes?
SELECT DISTINCT p.nombre as provincias FROM `clientes` c RIGHT JOIN `provincias` p ON c.codigoProvincia = p.codigo Where c.codigoProvincia IS null;

-- ¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. Un tip, vas a necesitar la sentencia distinct
SELECT DISTINCT p.nombre as provincias FROM `clientes` c INNER JOIN `provincias` p ON c.codigoProvincia = p.codigo;