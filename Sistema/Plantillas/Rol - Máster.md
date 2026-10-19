<%*
const partes = tp.file.folder(true).split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
-%>
---
tipo: máster
ámbito: rol
campaña: "[[<% camp %>]]"
fecha: <% tp.date.now("YYYY-MM-DD") %>
actualizado: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: false
---
```table-of-contents
```

## El gran arco

> ¿De qué trata realmente esta campaña? ¿Cuál es el conflicto central? ¿Qué está en juego?

### Cómo puede terminar

1.
2.
3.

## Antagonistas y fuerzas en juego

> Cada fuerza tiene un plan y actúa aunque los jugadores no hagan nada.

### [Nombre]

**¿Qué quiere?**
**¿Qué está haciendo ahora mismo?**
**¿Qué pasa si los PJ no lo detienen?**

## Relojes de presión

| Reloj | Descripción | Progreso | Desencadenante |
|---|---|---|---|
|  |  | ○○○○ |  |

## Secretos que los PJ no saben

- [ ]

## Temas y preguntas morales

-

## Notas de diseño

## Tareas pendientes

- [ ]
