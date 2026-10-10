# Objetivo del Sprint 1 — UniDelivery

## 1. Información General
- **Proyecto:** UniDelivery — Aplicación de pedidos y delivery de comida universitaria
- **Curso:** Modelado y Desarrollo de Aplicaciones (CIIN1322P)
- **Institución:** Universidad Privada del Norte (UPN)
- **Integrantes:**
  - Jordy Saúl Yangua De La Cruz (`saulyangua`)
  - Victor Manuel Maqui Hernandez
  - Ruben Steve Mendez Vasquez
  - Ghino Alvieri Valdiviezo Ruiz
- **Sprint:** Sprint 1
- **Duración:** 2 semanas (10 días hábiles)

---

## 2. Objetivo del Sprint (Sprint Goal)
> **"Permitir que un estudiante se registre, vea el menú de la cafetería universitaria, arme un pedido y lo pague en línea, para recibirlo o recogerlo sin hacer cola."**

### Justificación del Valor
El propósito central de este primer incremento es entregar el flujo de valor crítico de inicio a fin (end-to-end), permitiendo resolver el dolor principal de los estudiantes universitarios: las largas colas y tiempos de espera en la cafetería durante los recesos de clase. Al concluir el sprint, el estudiante podrá autogestionar su compra completa desde su teléfono móvil o computadora y la cocina contará con la recepción digital del pedido.

---

## 3. Capacidad del Equipo y Métricas Planificadas
- **Capacidad total del equipo:** 30 puntos de historia (Story Points).
- **Puntos comprometidos en el Sprint:** 29 puntos de historia (Story Points).
- **Holgura planificada:** 1 punto de historia (Story Point) (~3.33% de margen para contingencias o refinamiento técnico).
- **Factor de ocupación:** 96.67%.

---

## 4. Alcance del Sprint 1 (Historias de Usuario Comprometidas)
Para alcanzar el objetivo planteado, se seleccionaron 7 historias de usuario del Product Backlog que componen la cadena de valor operativa y funcional:

| ID | Historia de Usuario | Prioridad MoSCoW | Estimación (SP) | Rol |
|:---|:---|:---:|:---:|:---|
| **HU-01** | Registrarse con correo institucional | Must Have | 3 | Estudiante |
| **HU-02** | Iniciar sesión | Must Have | 2 | Estudiante |
| **HU-03** | Ver menú del día | Must Have | 3 | Estudiante |
| **HU-05** | Agregar platos al carrito | Must Have | 5 | Estudiante |
| **HU-06** | Pagar con tarjeta | Must Have | 8 | Estudiante |
| **HU-07** | Ver estado del pedido | Should Have | 3 | Estudiante |
| **HU-09** | Cocinero: ver pedidos pendientes y marcarlos como listos | Should Have | 5 | Cocinero |
| **TOTAL** | **7 Historias de Usuario seleccionadas** | — | **29 Puntos** | — |

---

## 5. Criterios de Éxito del Incremento
1. **Flujo de Usuario Completo:** Un estudiante nuevo puede registrarse con su correo `@upn.pe`, iniciar sesión, visualizar el menú del día, agregar productos a su carrito y pagar mediante tarjeta bancaria.
2. **Coordinación Operativa con Cocina:** Al confirmarse el pago, la orden se visualiza de forma inmediata en el panel del cocinero en orden cronológico, y este puede marcarla como lista.
3. **Seguimiento en Tiempo Real:** El estudiante puede consultar el estado de preparación de su pedido hasta que se indique que está listo para recoger o en entrega.
