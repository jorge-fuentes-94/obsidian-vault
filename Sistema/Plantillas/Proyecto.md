---
tipo: proyecto
ámbito: <% await tp.system.suggester(["Escritura", "Rol", "Código", "Podcast", "Personal"], ["escritura", "rol", "código", "podcast", "personal"], false, "Ámbito") %>
estado: activo
fecha: <% tp.date.now("YYYY-MM-DD") %>
actualizado: <% tp.date.now("YYYY-MM-DD") %>
publish: false
---
Qué es y para qué lo hago, en una o dos frases.

## Próximo paso

- [ ]

## Hitos

- [ ]

## Notas del proyecto

```dataview
LIST FROM "<% tp.file.folder(true) %>" WHERE file.name != this.file.name
SORT file.mtime DESC
```
