<%*
const partes = tp.file.folder(true).split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
-%>
---
tipo: jugador
ámbito: rol
campaña: "[[<% camp %>]]"
jugador:
afiliación: []
fecha: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: true
---
## Concepto

## Apariencia

## Características

## Conexiones

## Historia
