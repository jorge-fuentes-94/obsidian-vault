<%*
const carpeta = tp.file.folder(true);
const partes = carpeta.split("/");
const i = partes.indexOf("Campañas");
const camp = i >= 0 && partes.length > i + 2 ? partes[i + 2] : "";
const pad = x => String(x).padStart(2, "0");
const hermanas = app.vault.getMarkdownFiles().filter(f => f.parent && f.parent.path === carpeta && f.path !== tp.file.path(true) && /^Sesión \d+/.test(f.basename));
const nums = hermanas.map(f => parseInt(f.basename.match(/^Sesión (\d+)/)[1], 10));
const n = nums.length ? Math.max(...nums) + 1 : 1;
const anterior = hermanas.find(f => parseInt(f.basename.match(/^Sesión (\d+)/)[1], 10) === n - 1);
let titulo = tp.file.title;
if (!/^Sesión \d+/.test(titulo)) {
  const t = /^(Sin título|Untitled)/.test(titulo) ? await tp.system.prompt("Título de la sesión " + pad(n)) : titulo;
  titulo = "Sesión " + pad(n) + (t ? " - " + t : "");
  await tp.file.rename(titulo);
}
if (anterior) {
  await app.vault.process(anterior, txt => txt.replace("Siguiente: —", "Siguiente: [[" + titulo + "]]"));
}
-%>
---
tipo: sesión
ámbito: rol
campaña: "[[<% camp %>]]"
número: <% n %>
fecha_partida: <% tp.date.now("YYYY-MM-DD") %>
descanso_largo: false
descanso_corto: false
fecha: <% tp.date.now("YYYY-MM-DD") %>
cssclasses:
  - rol
publish: true
---
<% anterior ? "← [[" + anterior.basename + "]]" : "← —" %> · [[<% camp %>]] · Siguiente: —

## Resumen

> Lo que vieron y vivieron los jugadores. Esta parte es pública.

## Momentos destacados

-

## PNJ y lugares que aparecieron

-

## Preguntas abiertas

-
