---
tipo: campaña
ámbito: rol
sistema:
mundo:
estado: activa
fecha: <% tp.date.now("YYYY-MM-DD") %>
actualizado: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: true
---
> Sinopsis breve: tono, premisa y ambientación. Lo que le dirías a alguien que pregunta de qué va.

## Personajes jugadores

| Personaje | Jugador | Concepto |
|---|---|---|
|  |  |  |

## Sesiones

- [[Sesión 01 - ]]

## PNJ destacados

## Facciones

## Lugares clave

## Tramas abiertas

> [!info]- Índice automático (solo en Obsidian)
> ```dataview
> TABLE tipo FROM "<% tp.file.folder(true) %>" AND -"<% tp.file.folder(true) %>/Máster"
> WHERE file.name != this.file.name
> SORT tipo ASC, file.name ASC
> ```
