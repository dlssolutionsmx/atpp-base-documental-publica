# Dictamen de revisión manual OCR y chunks ATPP V1

- Base revisada: `piloto_atpp_2022_2026_publica_v1.duckdb`
- Muestra: primera, intermedia y última página por fuente OCR; chunks inicial, central y final.
- Recursos OCR documentales revisados visualmente: 5 fuentes binarias; 8 ocurrencias documentales cubiertas por la muestra.

## Resultados

| Elemento | Muestra | PASS | PASS_CON_OBSERVACION | FAIL_OCR_ESTRUCTURAL |
|---|---:|---:|---:|---:|
| Páginas OCR | 22 | 1 | 20 | 1 |
| Chunks OCR | 22 | 5 | 16 | 1 |

| Control | Resultado |
|---|---|
| Limpieza visual/textual de páginas | **PASS**: 22 de 22 |
| Limpieza de chunks | **PASS**: 22 de 22 |
| Páginas/chunks enlazados a copia pública | **PASS**: páginas faltantes 0; chunks faltantes 0 |
| Residuos visibles de IDs/rutas/URLs Drive/correos/teléfonos | **0 observados** en la muestra |

## Hallazgo principal

La limpieza de la copia derivada se confirma en la muestra: no se observaron IDs de Drive, rutas internas, URLs privadas, correos ni teléfonos. Sin embargo, el OCR no es una reproducción visual universal: las páginas con tablas, columnas, URLs extensas y el calendario gráfico requieren advertencias de uso.

El caso del calendario debe conservar la imagen como fuente primaria. Su OCR sólo es apto para búsqueda aproximada de la leyenda y algunos títulos; no es apto para reconstruir celdas, colores, iconos o fechas. Las columnas editoriales y los índices son aptos para recuperación, pero pueden perder el orden espacial.

## Dictamen

`REVISION_MANUAL_COMPLETADA_CON_OBSERVACIONES`. La copia derivada puede utilizarse para búsqueda textual y navegación documental con sus advertencias. Permanece `DERIVADA_NO_PUBLICADA_REVISION_OCR_COMPLETADA` hasta completar autorización de redistribución, licencia, revisión de sensibilidad y política de publicación.

## Artefactos

- `publico.revision_manual_pagina` y `publico.revision_manual_chunk` registran la revisión sin exponer IDs de Drive ni rutas.
- `publico.v_revision_ocr` permite consultar ambas capas.
- Los CSV de muestra conservan el detalle de las decisiones y observaciones.
