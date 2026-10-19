<%*
const partes = tp.file.folder(true).split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
-%>
---
tipo: trama
ámbito: rol
campaña: "[[<% camp %>]]"
estado: activa
fecha: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: false
---
## En una frase

## ¿Quién la mueve?

## ¿Qué está en juego?

## Beats

1. **Gancho**: ¿cómo se enteran los PJ?
2. **Complicación**: ¿por qué no es tan sencillo?
3. **Punto de no retorno**
4. **Clímax**
5. **Consecuencia**: ¿qué cambia en el mundo?

## Pistas

| Pista | Cómo encontrarla |
|---|---|
|  |  |

## Estado actual
