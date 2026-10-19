<%*
const partes = tp.file.folder(true).split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
-%>
---
tipo: pnj
ámbito: rol
campaña: "[[<% camp %>]]"
afiliación: []
papel:
ubicación:
fecha: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: true
---
## Primera impresión

> Una o dos frases que puedas leer en voz alta.

## Apariencia

## Cómo habla

## Personalidad

## Qué quiere

## Qué quiere de los PJ

> [!secret]- Secreto
> Lo que los jugadores no saben.

## Historia
