# Validación post-revisión OCR de la copia derivada ATPP V1

Base: `piloto_atpp_2022_2026_publica_v1.duckdb`
- Fecha: 2026-08-25T11:30:26.700108+00:00

## Controles

| Control | Resultado | Valor |
|---|---|---:|
| filas_maestras | **PASS** | 1422 |
| folios_unicos | **PASS** | 1422 |
| paginas_revision | **PASS** | 22 |
| chunks_revision | **PASS** | 22 |
| fallos_ocr_estructural | **WARN** | 2 |
| observaciones | **PASS** | 36 |
| referencias_huerfanas | **PASS** | 0 |
| residuo_ids_drive | **PASS** | 0 |
| residuo_urls_drive | **PASS** | 0 |
| residuo_paths | **PASS** | 0 |
| residuo_emails | **PASS** | 0 |

## Interpretación

La revisión manual quedó incorporada en `publico.revision_manual_pagina`, `publico.revision_manual_chunk` y `publico.v_revision_ocr`. La limpieza no presenta residuos detectables de IDs de Drive, URLs de Drive, rutas internas o correos. Se conserva una advertencia estructural para el calendario gráfico: su OCR sirve para búsqueda aproximada, no para reconstruir celdas, colores o fechas.

La base mantiene estado no publicado hasta contar con autorización de redistribución, licencia/atribución y revisión general de sensibilidad.
