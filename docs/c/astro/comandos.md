Perfecto. Te dejo un bloque limpio, práctico y enfocado solo en lo que realmente estás usando en este proyecto Astro + optimización estática.

Guardalo tal cual.

⸻

🚀 ASTRO – Comandos clave del proyecto

📦 Instalación inicial

`npm install`

Instala dependencias del proyecto.

⸻

🧪 Desarrollo local

`npm run dev`

Levanta servidor local (normalmente en http://localhost:4321)

⸻

🏗 Build de producción

`npm run build`

Genera carpeta dist/ optimizada.

⸻

🔍 Preview del build

`npm run preview`

Sirve el contenido de dist/ para probar como producción.

⸻

🧹 Limpieza total (cuando algo raro pasa)

```
rm -rf node_modules
rm -rf .astro
npm install
```

Resetea entorno completamente.

⸻

🧠 TypeScript / Alias

Reiniciar TS Server (VS Code)

`Cmd + Shift + P` → TypeScript: Restart TS Server

⸻

🧾 Git básico (flujo que estás usando)

Ver estado

`git status`


⸻

Stage archivos

`git add .`

o específico:

`git add src/components/hero-form.astro`


⸻

Commit

`git commit -m "refactor: hero form component"`


⸻

Push

`git push origin main`

(si corresponde)

⸻

🖼 Estructura que definiste

Alias configurado

@ → apunta a src/

Import ejemplo:

`import Header from "@/components/header.astro";`


⸻

🧱 Arquitectura actual
```
	•	layouts/base.astro
	•	components/header.astro
	•	components/footer.astro
	•	components/hero-form.astro
	•	components/seo/schema.astro
```

⸻

🧩 Patrones importantes que ya implementaste

Slot para schema

`<slot name="schema" />`

Uso:

```
<Fragment slot="schema">
  <Schema type="home" />
</Fragment>
```

⸻

Hero dinámico por URL

`const pathname = Astro.url.pathname;`


⸻

Comentarios que NO llegan a producción

`{/* comentario interno */}`


⸻

Script dentro de componente

`<script>`

No va en head.
Va dentro del componente que lo usa.

⸻

🎯 Recordatorios estratégicos
```
	•	No usar inline styles si podés usar clase dinámica.
	•	No poner lógica del formulario en layout.
	•	No optimizar imágenes innecesariamente si ya están bien.
	•	Mantener todo en minúsculas para evitar problemas de casing en Mac.
	•	Siempre reiniciar dev server después de cambiar config.
```
