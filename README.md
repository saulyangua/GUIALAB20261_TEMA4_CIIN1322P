# UniDelivery — Sistema de Delivery de Comida Universitaria

## Laboratorio N.° 04: Historias de Usuario, INVEST, Gherkin y Priorización Ágil

- **Curso:** Modelado y Desarrollo de Aplicaciones
- **Código del Curso:** CIIN1322P
- **Institución:** Universidad Privada del Norte (UPN)
- **Estudiante:** Jordy Saúl Yangua De La Cruz (`saulyangua`)

---

## 1. Descripción del Proyecto
**UniDelivery** es una aplicación diseñada para optimizar los pedidos de comida en la cafetería universitaria. Permite que los estudiantes consulten el menú del día, armen su orden, paguen en línea con tarjeta o billetera digital y reciban su comida o la recojan sin necesidad de hacer filas ni aglomerarse durante los recesos académicos.

---

## 2. Enlace al Tablero Ágil (Trello)
> [!IMPORTANT]
> Accede al seguimiento del Sprint Backlog y flujo de trabajo Kanban en el siguiente enlace:  
> **[Tablero de Trello — UniDelivery (Sprint 1)](https://trello.com/b/ID_DEL_TABLERO)**  
> *(Marcador: Reemplazar por el enlace público o compartido de tu tablero de Trello)*

---

## 3. Estructura del Repositorio y Contenido por Carpeta

A continuación se detalla la organización del repositorio y el propósito de cada artefacto desarrollado:

| Carpeta / Archivo | Tipo de Contenido | Descripción Detallada |
|:---|:---:|:---|
| [`01_objetivo_sprint.md`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/01_objetivo_sprint.md) | Markdown | Define el Sprint Goal del Sprint 1, capacidad del equipo (30 SP), puntos comprometidos (29 SP), holgura (1 SP) y alcance de historias (HU-01, 02, 03, 05, 06, 07 y 09). |
| [`02_historias_usuario.md`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/02_historias_usuario.md) | Markdown | Catálogo de 13 Historias de Usuario en formato estándar (`Como / Quiero / Para`), clasificación MoSCoW, puntos de historia y matriz de validación de calidad INVEST con observaciones y correcciones. |
| [`03_gherkin/`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/) | Directorio | Contiene 7 archivos de especificación ejecutable en formato Gherkin (`# language: es`) y sus diagramas de actividad homólogos en PlantUML (`.puml`). |
| ├─ [`HU-01_registro.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-01_registro.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-01_registro.puml) | `.feature` / `.puml` | Escenarios y diagrama de registro exitoso, correo no institucional y correo previamente registrado. |
| ├─ [`HU-02_login.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-02_login.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-02_login.puml) | `.feature` / `.puml` | Escenarios y diagrama de inicio de sesión exitoso, contraseña incorrecta y bloqueo preventivo tras 5 intentos. |
| ├─ [`HU-03_menu.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-03_menu.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-03_menu.puml) | `.feature` / `.puml` | Escenarios y diagrama de visualización de menú disponible y menú no publicado. |
| ├─ [`HU-05_carrito.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-05_carrito.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-05_carrito.puml) | `.feature` / `.puml` | Escenarios y diagrama de agregar plato disponible, manejo de plato agotado y remoción de plato. |
| ├─ [`HU-06_pago.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-06_pago.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-06_pago.puml) | `.feature` / `.puml` | Escenarios y diagrama de cobro exitoso con tarjeta, tarjeta rechazada y caída o indisponibilidad de pasarela. |
| ├─ [`HU-07_estado.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-07_estado.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-07_estado.puml) | `.feature` / `.puml` | Escenarios y diagrama de consulta de pedido en preparación, notificación de pedido listo y sin pedidos activos. |
| └─ [`HU-09_cocina.feature`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-09_cocina.feature) / [`.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/03_gherkin/HU-09_cocina.puml) | `.feature` / `.puml` | Escenarios y diagrama de visualización FIFO (antiguo a reciente), marcado de pedido listo y cola vacía. |
| [`04_DoD_DoR.md`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/04_DoD_DoR.md) | Markdown | Acuerdos de calidad del equipo: Definition of Ready (DoR - 5 criterios) y Definition of Done (DoD - 6 criterios) aplicados a UniDelivery. |
| [`05_priorizacion.xlsx`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/05_priorizacion.xlsx) | Hoja de Cálculo | Libro Excel (fuente Arial) con 3 hojas: **MoSCoW** (con función `=SUMIF`, capacidad y holgura), **WSJF** (fórmulas `=B+C+D` y `=E/F`, ordenada de mayor a menor) y **Flujo** (datos simulados de evolución CFD para los 10 días del sprint). |
| [`06_diagramas/`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/) | Directorio | Diagramas de actividad PlantUML (`.puml`) y Draw.io (`.drawio`) que modelan visualmente los flujos y decisiones de las historias de usuario. |
| ├─ [`HU-01_registro.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-01_registro.puml) | PlantUML | Diagrama de actividad del flujo de registro y validaciones de correo institucional. |
| ├─ [`HU-02_login.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-02_login.puml) | PlantUML | Diagrama de actividad de autenticación, control de intentos y bloqueo temporal. |
| ├─ [`HU-03_menu.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-03_menu.puml) | PlantUML | Diagrama de actividad de consulta y publicación del menú diario. |
| ├─ [`HU-05_carrito.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-05_carrito.puml) | PlantUML | Diagrama de actividad para agregar plato, verificación de stock y eliminación de ítems. |
| ├─ [`HU-06_pago.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-06_pago.puml) | PlantUML | Diagrama de actividad del flujo de pago con tarjeta, respuesta de pasarela y reintentos. |
| ├─ [`HU-06_pago.drawio`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-06_pago.drawio) | Draw.io XML | Diagrama de actividad homólogo en formato nativo XML para diagramas.net / Draw.io. |
| ├─ [`HU-07_estado.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-07_estado.puml) | PlantUML | Diagrama de actividad del seguimiento de pedido en preparación y aviso de recojo. |
| └─ [`HU-09_cocina.puml`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/06_diagramas/HU-09_cocina.puml) | PlantUML | Diagrama de actividad para la vista FIFO de cocina y despacho de pedidos listos. |
| [`07_evidencias/`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/07_evidencias/) | Directorio | Carpeta destinada a las capturas de pantalla de respaldo. |
| └─ [`LEEME.md`](file:///c:/source/.vsc/guia_04/Tema4_YanguaSaul/07_evidencias/LEEME.md) | Markdown | Nomenclatura estándar y listado sugerido de 9 capturas de evidencia a incorporar. |

---

## 4. Convención de Control de Versiones (Git)
El repositorio maneja un historial lineal de commits semánticos y una etiqueta anotada de entrega:
1. `docs(HU-01..HU-13): backlog inicial con validación INVEST`
2. `feat(HU-01,02,03,05,06,07,09): escenarios Gherkin`
3. `docs: DoR/DoD y priorización MoSCoW y WSJF`
4. `docs(HU-06): diagrama de actividad de pago`
- **Tag:** `v1.0` (*"Entrega Tema 4"*)
