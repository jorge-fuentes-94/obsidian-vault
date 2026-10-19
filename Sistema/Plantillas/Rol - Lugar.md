<%*
const partes = tp.file.folder(true).split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
-%>
---
tipo: lugar
ámbito: rol
campaña: "[[<% camp %>]]"
escala: <% await tp.system.suggester(["Continente", "País o región", "Ciudad", "Barrio", "Edificio", "Mazmorra", "Otro"], ["continente", "región", "ciudad", "barrio", "edificio", "mazmorra", "otro"], false, "Escala") %>
ubicación:
fecha: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: true
---
## Primera impresión

> Qué ven, huelen o escuchan los PJ al llegar.

## Descripción

## Quién hay aquí

| Nombre | Papel |
|---|---|
|  |  |

## Qué se puede hacer aquí

-

> [!secret]- Secretos
> -

## Historia
