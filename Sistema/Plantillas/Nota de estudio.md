<%*
const ambito = await tp.system.suggester(["Informática (DAW)", "Informática (otros cursos)", "Laboral (FOL)", "Esoterismo", "Personal"], ["daw", "informática", "laboral", "esoterismo", "personal"], false, "Ámbito");
let modulo = "";
if (ambito === "daw") {
  modulo = await tp.system.suggester(
    ["Programación", "Bases de datos", "Sistemas informáticos", "Entornos de desarrollo", "Lenguaje de marcas y sistemas de gestión de información", "Desarrollo web en entorno cliente", "Desarrollo web en entorno servidor", "Diseño de interfaces web", "Despliegue de aplicaciones web", "Digitalización aplicada a los sectores productivos", "Programación en Python", "Otro"],
    ["Programación", "Bases de datos", "Sistemas informáticos", "Entornos de desarrollo", "Lenguaje de marcas y sistemas de gestión de información", "Desarrollo web en entorno cliente", "Desarrollo web en entorno servidor", "Diseño de interfaces web", "Despliegue de aplicaciones web", "Digitalización aplicada a los sectores productivos", "Programación en Python", ""],
    false, "Módulo");
}
const origen = ambito === "daw" || ambito === "laboral" ? "DAW" : (await tp.system.prompt("Origen (curso, libro, web o «Propio»)", "Propio"));
-%>
---
tipo: nota
ámbito: <% ambito === "daw" ? "informática" : ambito %>
origen: <% origen %>
<% modulo ? "módulo:\n  - " + modulo + "\n" : "" %>fecha: <% tp.date.now("YYYY-MM-DD") %>
actualizado: <% tp.date.now("YYYY-MM-DD") %>
publish: true
---
<% tp.file.cursor() %>

## Concepto

## Cómo funciona

## Ejemplo

```

```
