# 02. Historias de Usuario y Validación INVEST — UniDelivery

En este documento se presenta el Product Backlog inicial compuesto por 13 Historias de Usuario para la aplicación **UniDelivery**, con su estimación en Puntos de Historia (Fibonacci) y su clasificación MoSCoW. Asimismo, se incluye la matriz de evaluación de calidad según el marco **INVEST**, identificando fallas y ajustes requeridos.

---

## 1. Product Backlog de Historias de Usuario

Todas las historias siguen el formato estándar:  
`Como [rol], quiero [acción] para [beneficio]`.

| ID | Historia de Usuario | MoSCoW | Puntos (SP) |
|:---|:---|:---:|:---:|
| **HU-01** | Como estudiante universitario, quiero registrarme con mi correo institucional para acceder a la plataforma de pedidos de la cafetería de forma segura y validada. | Must | 3 |
| **HU-02** | Como estudiante registrado, quiero iniciar sesión con mis credenciales para acceder a mi cuenta y gestionar mis pedidos. | Must | 2 |
| **HU-03** | Como estudiante, quiero ver el menú del día de la cafetería universitaria para conocer los platos disponibles, precios y opciones antes de comprar. | Must | 3 |
| **HU-04** | Como estudiante, quiero buscar platos por nombre o categoría para encontrar rápidamente lo que deseo comer sin recorrer todo el menú. | Could | 3 |
| **HU-05** | Como estudiante, quiero agregar platos al carrito de compras para armar mi pedido antes de proceder al pago. | Must | 5 |
| **HU-06** | Como estudiante, quiero pagar mi pedido con tarjeta de débito o crédito para completar la compra de manera rápida y sin usar dinero en efectivo. | Must | 8 |
| **HU-07** | Como estudiante, quiero ver el estado de mi pedido en tiempo real para saber cuándo está listo y recogerlo o recibirlo sin hacer cola. | Should | 3 |
| **HU-08** | Como estudiante, quiero cancelar mi pedido únicamente en estado "Recibido" para anular la orden si cometí un error antes de que comience su preparación. | Could | 3 |
| **HU-09** | Como cocinero, quiero ver los pedidos pendientes y marcarlos como listos para organizar la preparación en cocina y avisar cuando puedan ser retirados. | Should | 5 |
| **HU-10** | Como administrador, quiero registrar y editar platos en el sistema para mantener actualizado el catálogo de comida disponible en la cafetería. | Should | 5 |
| **HU-11** | Como estudiante, quiero calificar mi pedido recibido para brindar retroalimentación sobre la calidad de la comida y el servicio de la cafetería. | Won't | 2 |
| **HU-12** | Como administrador, quiero obtener un reporte de ventas diarias para analizar los ingresos financieros y la demanda de la cafetería universitaria. | Won't | 5 |
| **HU-13** | Como estudiante, quiero pagar con Yape para tener una opción alternativa de pago digital directo desde mi teléfono móvil. | Should | 5 |

---

## 2. Matriz de Validación INVEST

Criterios de calidad INVEST:
- **I** (Independent - Independiente)
- **N** (Negotiable - Negociable)
- **V** (Valuable - Valiosa)
- **E** (Estimable - Estimable)
- **S** (Small - Pequeña)
- **T** (Testable - Comprobable / Verificable)

| ID | Historia de Usuario | I | N | V | E | S | T | Observación / Ajuste |
|:---|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---|
| **HU-01** | Registrarse con correo institucional | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-02** | Iniciar sesión | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-03** | Ver menú del día | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-04** | Buscar platos por nombre o categoría | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-05** | Agregar platos al carrito | ✖ | ✔ | ✔ | ✔ | ✔ | ✔ | **Falla en I:** Depende funcionalmente de HU-03 (menú del día) para obtener la lista de platos. Se gestiona coordinadamente en el Sprint 1. |
| **HU-06** | Pagar con tarjeta | ✔ | ✔ | ✔ | ✔ | ✖ | ✔ | **Falla en S:** Inicialmente era muy grande al incluir múltiples pasarelas y métodos; se dividió extrayendo el pago por Yape como HU-13. |
| **HU-07** | Ver estado del pedido | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-08** | Cancelar pedido en estado "Recibido" | ✔ | ✔ | ✔ | ✔ | ✔ | ✖ | **Falla en T:** La condición original "no preparado" resultaba ambigua y difícil de probar; se acotó formalmente al estado verificable "Recibido". |
| **HU-09** | Cocinero: ver pedidos pendientes y marcarlos como listos | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-10** | Administrador: registrar y editar platos | ✔ | ✔ | ✔ | ✔ | ✖ | ✔ | **Falla en S:** Muy grande al abarcar tanto la creación de nuevos registros como el flujo completo de edición de platos. Requiere dividirse en futuros sprints. |
| **HU-11** | Calificar pedido | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | Cumple todos los criterios INVEST. |
| **HU-12** | Administrador: reporte de ventas diarias | ✔ | ✔ | ✔ | ✖ | ✔ | ✖ | **Falla en E y T:** No tiene definidas las métricas exactas, filtros ni formato del reporte, imposibilitando una estimación y verificación objetiva. |
| **HU-13** | Pagar con Yape (derivada de HU-06) | ✖ | ✔ | ✔ | ✔ | ✔ | ✔ | **Falla en I:** Es una historia derivada de HU-06; depende de la arquitectura compartida y el módulo base de cobro. |
