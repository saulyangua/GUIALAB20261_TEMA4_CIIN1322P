# 04. Acuerdos de Calidad del Equipo: Definition of Ready (DoR) y Definition of Done (DoD)

Para asegurar la calidad, predictibilidad y agilidad en el desarrollo de **UniDelivery**, el equipo Scrum establece los siguientes acuerdos de trabajo que delimitan cuándo una Historia de Usuario está lista para entrar a desarrollo y cuándo se considera 100% terminada.

---

## 1. Definition of Ready (DoR) — Definición de Preparado

Una Historia de Usuario se considera **Ready (Lista)** para ser incorporada y planificada en un Sprint si cumple estrictamente con los siguientes 5 criterios:

- [ ] **1. Cumple INVEST:** La historia de usuario está redactada desde la perspectiva del usuario (`Como... Quiero... Para...`), es independiente o sus dependencias están mitigadas, aporta valor identificable, es negociable, pequeña y comprobable.
- [ ] **2. Tiene Gherkin:** Contiene criterios de aceptación especificados formalmente bajo la sintaxis Gherkin (`Dado / Cuando / Entonces`), contemplando como mínimo un camino feliz (Happy Path) y los escenarios de error o alternos más relevantes.
- [ ] **3. Estimada en puntos:** Ha sido refinada y estimada de manera consensuada por el equipo de desarrollo utilizando Planning Poker con la escala relativa de Fibonacci (1, 2, 3, 5, 8, 13).
- [ ] **4. Sin dependencias bloqueantes:** No posee dependencias externas no resueltas (diseño UI, arquitectura, API de terceros o historias previas) que impidan su inicio inmediato dentro del Sprint.
- [ ] **5. Tiene responsable:** Cuenta con un desarrollador o par responsable asignado para asumir la titularidad técnica del ítem al iniciar su ejecución.

---

## 2. Definition of Done (DoD) — Definición de Terminado

Una Historia de Usuario se declara **Done (Terminada)** y potencialmente entregable como parte del incremento del producto únicamente cuando cumple con los siguientes 6 criterios:

- [ ] **1. Cumple todos los escenarios Gherkin:** El comportamiento del software satisface y supera todos los criterios de aceptación y escenarios Gherkin definidos previamente sin regresiones.
- [ ] **2. Código en GitHub con commit descriptivo:** El código fuente ha sido subido al repositorio en GitHub siguiendo convenciones claras de commit (`feat:`, `fix:`, `docs:`, etc.) y referenciando el identificador de la historia (ej. `HU-01`).
- [ ] **3. Revisada por otro integrante (Peer Review):** El Pull Request (PR) correspondiente ha sido inspeccionado y formalmente aprobado por al menos otro miembro del equipo mediante revisión de código entre pares.
- [ ] **4. Pasó las pruebas:** Se ejecutan y aprueban exitosamente las pruebas unitarias y de integración automáticas, garantizando la estabilidad y ausencia de defectos críticos.
- [ ] **5. Está documentada:** El código cuenta con documentación técnica adecuada (docstrings, endpoints, esquemas de datos) y se ha actualizado la documentación del repositorio si amerita.
- [ ] **6. Tarjeta en "Hecho":** La tarjeta representativa de la historia de usuario en el tablero ágil (Trello / Jira) ha sido movida formalmente a la columna **"Hecho" (Done)**.

---

## 3. Matriz de Aplicación en UniDelivery

| Momento del Ciclo | Artefacto de Control | Objetivo Principal | Responsables |
|:---|:---:|:---|:---|
| **Previo al Sprint Planning / Refinamiento** | **DoR** | Evitar el ingreso de requisitos ambiguos o bloqueados al Sprint Backlog. | Product Owner y Equipo de Desarrollo |
| **Cierre del desarrollo / Sprint Review** | **DoD** | Garantizar que todo incremento entregado cumpla estándares de calidad y esté listo para producción. | Equipo de Desarrollo y Scrum Master |
