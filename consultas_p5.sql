-- Pregunta 1
SELECT p.id_n_postulacion AS "N° Postulacion", p.fecha_post AS "Fecha", t.nom_tipo AS "Tipo Postulacion", s.nom_sede AS "Sede", r1.nom_region AS "Region Origen", r2.nom_region AS "Region Impacto", p.presupuesto AS "Presupuesto" 
from postulacion p 
INNER JOIN tipo_postulacion t ON p.Tipo_iniciativa = t.id_existen_inicia 
INNER JOIN sede s ON p.id_sede = s.id_sede 
INNER JOIN region r1 ON p.id_regionor = r1.id_region
INNER JOIN region r2 ON p.id_regionimp = r2.id_region;

-- Pregunta 2
SELECT 
    e.nombre AS Empresa, 
    s.nom_sede AS Sede, 
    p.presupuesto AS Presupuesto
FROM postulacion p
JOIN empresa e ON p.rut_empresa = e.rut_empresa
JOIN sede s ON p.id_sede= s.id_sede
JOIN region r ON p.id_regionor = r.id_region
WHERE r.id_region=5;

-- Pregunta 3
SELECT 
COUNT(CASE WHEN tp.id_existen_inicia=1 then 1 END) AS total_postulaciones_nuevas,
COUNT(CASE WHEN tp.id_existen_inicia=2 then 1 END) as Postulacion_existente
FROM postulacion p
JOIN tipo_postulacion tp ON p.Tipo_iniciativa = tp.id_existen_inicia;

-- Pregunta 4
SELECT
p.id_n_postulacion as 'Postulacion',
per.rut_persona as 'Rut', 
per.nombre as 'Nombre', 
c.nom_cargo as 'Tipo Persona', 
s.nom_sede as 'Sede', 
per.email as 'Email' 
FROM postulacion p 
JOIN equipo_de_trabajo eq on p.id_grupo = eq.id_grupo 
JOIN integrante_equipo i on eq.id_grupo = i.id_grupo 
JOIN persona per on i.rut_persona = per.rut_persona 
JOIN cargo_persona c on per.id_cargo = c.id_cargo 
JOIN sede s on per.id_sede = s.id_sede
WHERE p.id_n_postulacion=1;

-- Pregunta 5
SELECT e.nombre as 'Nombre Empresa',
count(p.id_n_postulacion) AS "Postulaciones",
e.convenio as Convenio,
ta.tamano_empr as 'Tamaño'
from empresa e
INNER JOIN postulacion p ON e.rut_empresa = p.rut_empresa
JOIN tam_empresa ta on e.id_tam= ta.id_tam
GROUP BY e.nombre
ORDER by e.id_tam DESC;

-- Pregunta 6
SELECT 
    p.id_n_postulacion AS N_Postulacion, 
    e.nombre AS Empresa, 
    p.presupuesto AS Presupuesto
FROM postulacion p
JOIN empresa e ON p.rut_empresa = e.rut_empresa
WHERE p.presupuesto > (SELECT AVG(presupuesto) FROM postulacion)
ORDER BY p.presupuesto DESC;

-- Pregunta 7
SELECT 
    p.id_n_postulacion AS N_Postulacion,
    cp.nom_cargo AS Tipo_Persona,
    COUNT(ie.rut_persona) AS Cantidad
FROM postulacion p
JOIN integrante_equipo ie ON p.id_grupo = ie.id_grupo
JOIN persona per ON ie.rut_persona = per.rut_persona
JOIN cargo_persona cp ON per.id_cargo = cp.id_cargo
GROUP BY p.id_n_postulacion, cp.nom_cargo
ORDER BY p.id_n_postulacion ASC;

-- Pregunta 8
SELECT
	p.id_n_postulacion AS "Postulacion",
    COUNT(CASE WHEN pm.id_cargo =1 then 1 END) as 'Alumno',
    COUNT(CASE WHEN pm.id_cargo =2 THEN 1 END) as 'Profesor'
FROM postulacion p
JOIN integrante_equipo pr on p.id_grupo= pr.id_grupo
JOIN persona pm on pr.rut_persona = pm.rut_persona
GROUP BY p.id_n_postulacion
HAVING Alumno <5 OR Profesor<3;

-- Pregunta 9
SELECT 
    e.rut_empresa AS RUT,
    e.nombre AS Nombre_Empresa,
    t.tamano_empr AS Tamano
FROM empresa e
JOIN tam_empresa t ON e.id_tam = t.id_tam
LEFT JOIN postulacion p ON e.rut_empresa = p.rut_empresa
WHERE p.rut_empresa IS NULL;

-- Pregunta 10
SELECT
	p.id_n_postulacion AS "Postulacion",
    p.codigo as 'Codigo interno',
    COUNT(et.n_etapa) as 'N Etapas',
    SUM(et.plazo) as 'Plazo' 
FROM postulacion p
JOIN etapa_del_cronograma et on p.id_n_postulacion = et.id_n_postulacion
GROUP BY p.id_n_postulacion
HAVING Plazo>36
ORDER BY Plazo DESC;
