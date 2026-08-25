# Validación de copia derivada pública ATPP V1

Base: `piloto_atpp_2022_2026_publica_v1.duckdb`

| Regla | Estado | Valor |
|---|---|---:|
| tablas_publicas_sin_capas_privadas | **PASS** | 19 |
| filas_maestras | **PASS** | 1422 |
| folios_consolidados_unicos | **PASS** | 1422 |
| ids_drive_residuales | **PASS** | 0 |
| urls_drive_residuales | **PASS** | 0 |
| rutas_internas_residuales | **PASS** | 0 |
| correos_residuales | **PASS** | 0 |
| chunks_sin_recurso | **PASS** | 0 |
| paginas_sin_recurso | **PASS** | 0 |

## Tablas públicas

| Tabla | Filas |
|---|---:|
| `publico.calidad` | 1935 |
| `publico.chunk` | 9313 |
| `publico.empate` | 1150 |
| `publico.enlace` | 1422 |
| `publico.evento` | 44 |
| `publico.extraccion` | 473 |
| `publico.fila_maestra` | 1422 |
| `publico.folio` | 3994 |
| `publico.jerarquia` | 1422 |
| `publico.manifiesto_publicacion` | 1 |
| `publico.mencion` | 196 |
| `publico.ocurrencia` | 1207 |
| `publico.pagina` | 5987 |
| `publico.recurso` | 387 |
| `publico.tema` | 337 |
| `publico.v_catalogo_busqueda` | 1422 |
| `publico.v_empates_por_fila` | 1424 |
| `publico.v_texto_busqueda` | 9313 |
| `publico.version` | 387 |

## Interpretación

La copia derivada no contiene las tablas privadas de matrices originales, IDs de Drive ni rutas internas. El estado queda como `DERIVADA_NO_PUBLICADA` hasta contar con autorización de permisos, licencia, muestra OCR y revisión humana de sensibilidad.
