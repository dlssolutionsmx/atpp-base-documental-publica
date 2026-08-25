SHOW ALL TABLES;
SELECT * FROM publico.v_catalogo_busqueda LIMIT 20;
SELECT * FROM publico.v_revision_ocr ORDER BY tipo_elemento,muestra_numero;
SELECT * FROM publico.v_texto_busqueda WHERE lower(contenido_publico) LIKE '%consejo%' LIMIT 20;
