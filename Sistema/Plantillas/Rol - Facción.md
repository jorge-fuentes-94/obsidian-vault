<%*
const partes = tp.file.folder(true).split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
-%>
---
tipo: facción
ámbito: rol
campaña: "[[<% camp %>]]"
fecha: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: true
---
## En una frase

## Miembros

## Qué quiere

## Métodos

## Historia
