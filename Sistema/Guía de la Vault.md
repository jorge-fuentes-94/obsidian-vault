---
tipo: referencia
ámbito: personal
actualizado: 2026-10-05
publish: false
---
Cómo está organizada Cámara General y cómo se trabaja en ella. Resultado de la auditoría de octubre de 2026; el historial de cambios está en el repositorio Git de la vault.

## Sincronización y copia

- Syncthing en el PC y Synctrain en iPhone e iPad. Exclusiones en `.stignore` (estado de ventanas, `.git`, `.trash`).
- Copia de seguridad: repositorio Git en la propia vault, subido a demanda desde el PC (Obsidian Git o `git push`). Nunca desde el móvil.
- Lo borrado va a `.trash/` (papelera de Obsidian), que no se sincroniza.

## Carpetas

| Carpeta | Qué entra | Publish |
|---|---|---|
| `00 - Inicio` | Portada pública (Index), portada privada (Inicio privado) y MOCs: Rol, Esoterismo, Escritura | sí (privados no) |
| `Listas` | Programación, DAW, Ocio, Ludoteca, Partidas pendientes, Leer más tarde y `Bases/` | sí (Bases y pendientes no) |
| `Inbox` | Capturas sin clasificar; se vacía cada semana | no |
| `Notas` | Apuntes de estudio y conocimiento, carpeta plana | sí por defecto |
| `Proyectos/<Proyecto>` | Hub del proyecto y sus notas de trabajo | no |
| `Rol/Campañas/{Activas,Archivo}/<Campaña>` | Hub con el nombre de la campaña + Sesiones, PNJ, Lugares, Facciones, Tramas, Objetos, Jugadores, Máster, Adjuntos | sí, salvo `Máster/` |
| `Rol/Ludoteca` | Un juego de rol por nota (la lista está en `Listas/Ludoteca`) | sí |
| `Rol/Recursos` | SRD, Lazy GM, Oficio (notas de máster), Tablas | sí |
| `Rol/Diseño` | Juegos propios en diseño | no |
| `Rol/Como jugador` | Fichas de mis personajes como jugador | sí |
| `Ocio` | Fichas de libros, películas, series, anime, juegos | sí |
| `Perfil` | Sobre mí, CV, Portfolio, Contacto | sí |
| `Personal` | Listas y planes personales | no |
| `Sistema` | Plantillas, Decks, esta guía | no |
| `Adjuntos` | Imágenes (WebP) de todo lo que no es campaña | según la nota |

## Propiedades

Claves en español. `publish`, `tags`, `aliases` y `cssclasses` se quedan en inglés porque Obsidian las necesita así.

- `tipo` (obligatoria): nota · referencia · proyecto · captura · moc · ocio · juego-rol · reunión · evento · campaña · máster · sesión · pnj · jugador · lugar · facción · trama · objeto · criatura · recurso-rol · base
- `ámbito`: rol · informática · laboral (FOL) · escritura · personal · ocio · esoterismo · trabajo · podcast
- `origen`: de dónde viene la información (DAW, un curso, un libro, una web, «Propio»)
- `módulo`: solo DAW, con el nombre oficial de la asignatura en UNIR
- `estado`: proyectos (idea, activo, en pausa, terminado, abandonado), campañas (activa, en pausa, terminada), ocio (pendiente, en proceso, terminado, abandonado, en pausa)
- Rol: `campaña` (enlace al hub), `número`, `fecha_partida`, `fecha_mundo`, `afiliación`, `papel`, `ubicación`, `mundo`, `sistema`, `jugador`, `descanso_largo`, `descanso_corto`
- Ocio: `subtipo`, `puntuación` (0–10) y después `valoración` (recomendada, me gusta, placer culpable, no me gusta); en series y anime, `temporadas_vistas` y `temporadas` (una línea por temporada: «T1: 8 · me gusta»), todo en una sola nota por serie, también las antológicas; `año`, `creadores`, `géneros`, `plataforma`, `portada`, `fecha_fin`
- `fecha` y `actualizado` en formato `AAAA-MM-DD` (el Linter actualiza `actualizado` al guardar)

## Tags

Solo dicen de qué trata una nota; lo que es lo dice `tipo`. Familias: `tema/` (python, sql, git…), `sistema/` (pbta, dnd5e…), `mundo/` (eberron, waterdeep), `curso/` (daw), `género/` (horror…), `evento/`. Sueltos útiles: `tren`, `homebrew`, `villano`.

## Estilo

- Sin H1: el nombre del archivo es el título. Secciones con `##`, subsecciones con `###`.
- Primera línea: una frase que diga qué es la nota.
- Las conexiones van dentro del texto: una frase que enlace la nota con sus vecinas, nunca una lista al final.
- Listas con `-`; `**negrita**` para términos clave, `_cursiva_` para títulos y énfasis.
- Callouts: `[!info]` definición, `[!tip]` consejo, `[!warning]` cuidado, `[!example]` código, `[!quote]` cita de jugador, `[!secret]` secreto de máster (no se ve en la web), `[!app]` paneles solo para Obsidian (no se ven en la web), `[!todo]` por completar.
- Nombres: mayúscula inicial y el resto como en una frase; sesiones `Sesión 03 - Título` (Masks: `Issue 03 - Título`); PNJ por su nombre propio con el cargo en `aliases`; ocio `Título (Año)`.
- La vault es bilingüe: el inglés es normal en material importado, términos técnicos y de rol. Se corrigen tildes y erratas, no la elección del idioma.
- Emojis solo en la portada y los MOCs, nunca en nombres de archivo.

## Plantillas y comandos

Plantillas en `Sistema/Plantillas`. Templater aplica la de cada carpeta al crear una nota (Inbox, Notas, Ludoteca y las subcarpetas de las campañas activas). Comandos de QuickAdd: Captura, Nueva sesión, Preparar sesión, Nuevo PNJ, Nuevo lugar, Nueva facción, Nueva trama, Nota de estudio, Nuevo proyecto, Juego de rol, Referencia, Evento. Ocio se da de alta con Media DB, que usa las plantillas `Ocio - *`.

Al crear una campaña nueva hay que añadir sus subcarpetas a las plantillas por carpeta de Templater.

## Publish

- Excluido por carpeta: Sistema, Inbox, Personal, Proyectos, Rol/Diseño y cada carpeta `Máster/`.
- Una nota publicada no enlaza a notas no publicadas (aparecen como texto gris).
- Publish no ejecuta Dataview ni Bases: lo que tenga que verse en la web va escrito; las consultas van dentro de callouts `[!app]` o `[!info]-`.
- `publish.css` en la raíz se sube como un archivo más desde el diálogo de Publish.

## Mantenimiento

- Semanal: vaciar el Inbox.
- Mensual: revisar con Claude enlaces rotos, notas huérfanas, conflictos de Syncthing (`*.sync-conflict-*`) y qué falta por publicar; hacer copia en Git.
