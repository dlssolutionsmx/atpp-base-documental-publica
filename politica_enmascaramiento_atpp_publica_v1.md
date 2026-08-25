# Política de enmascaramiento y copia derivada pública ATPP V1

> La base privada nunca se modifica. La publicación sólo puede salir de una copia derivada materializada mediante reglas declaradas y validaciones reproducibles.

## Campos y transformaciones

| Categoría | Acción en copia pública |
|---|---|
| IDs de Drive (`drive_file_id`, `recurso_drive_id`) | Se eliminan; se sustituyen por `*_publico_id` estables derivados de campos documentales públicos. |
| Rutas (`ruta_relativa`, `ruta_original`, carpetas internas) | Se eliminan por completo. La navegación se conserva mediante ciclo, evento, tema, folio y jerarquía pública. |
| Enlaces de Drive/Google internos | Se eliminan; no se conservan tokens, permisos ni URLs privadas. |
| URLs externas | Se conservan sólo si no pertenecen a dominios internos; se eliminan query strings salvo parámetros funcionales mínimos de YouTube. |
| Folios manuales y E## | Se conservan porque son la semántica documental solicitada; no son credenciales ni rutas. |
| Hash SHA-256 | Se conserva para integridad y deduplicación; debe revisarse si la política pública exige ocultar huellas de archivos. |
| Texto OCR/TXT/chunks | Se conserva con procedencia pública y se limpian IDs, URLs internas, rutas, correos y teléfonos detectables. |
| Evidencia y notas | Se conservan sólo en versión scrubbed; se eliminan referencias internas directas. |
| Tablas de matrices originales | No se copian a la base pública; permanecen en la base privada de procedencia. |

## Identificadores públicos

Los identificadores `FILA-*`, `EVENTO-*`, `TEMA-*`, `RECURSO-*`, `PAGINA-*`, `CHUNK-*` y `EMPATE-*` son claves técnicas para navegar la copia pública. No permiten descargar recursos ni abrir Drive. La copia conserva relaciones internas públicas sin exponer las claves privadas originales.

## Puerta de publicación

| Control | Estado inicial | Requisito para publicar |
|---|---|---|
| Eliminación de IDs y rutas | Validado automáticamente | Cero residuos en la copia final. |
| Utilidad SQL | Validada | Las vistas públicas deben responder sin depender de la base privada. |
| Permisos de fuentes | Pendiente | Confirmar autorización de redistribución por recurso/enlace. |
| Licencia y atribución | Pendiente | Incluir licencia, atribución y política de actualización. |
| Revisión OCR | Pendiente | Revisar muestra visual y registrar incidencias si procede. |
| Escaneo de datos sensibles | Parcial automático | Revisar manualmente nombres, notas y texto completo; las expresiones automáticas no garantizan detección total. |
| Estado de publicación | `DERIVADA_NO_PUBLICADA` | Cambiar sólo después de autorización expresa. |

## Artefacto actual

- Copia derivada local: `piloto_atpp_2022_2026_publica_v1.duckdb`
- Política: `politica_enmascaramiento_atpp_publica_v1.md`
- Filas maestras: 1422
- Recursos: 387
- Páginas: 5987
- Chunks: 9313
- Base privada de origen: no incluida en la copia pública.

## Procedimiento reproducible

Ejecutar el generador contra una copia privada versionada, revisar `publico.validacion_publicacion`, comparar el manifiesto y checksum, someter a autorización de publicación y sólo después transferir la copia derivada al medio público.
