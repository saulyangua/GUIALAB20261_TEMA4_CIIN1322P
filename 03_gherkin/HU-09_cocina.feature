# language: es
Característica: HU-09 Gestión de pedidos en cocina
  Como cocinero
  Quiero ver los pedidos pendientes y marcarlos como listos
  Para organizar la preparación en cocina y avisar cuando puedan ser retirados

  Escenario: Visualizar lista de pedidos pendientes ordenada por antigüedad (FIFO)
    Dado que existen tres pedidos pagados pendientes: "PED-001" recibido a las 12:00, "PED-002" a las 12:03 y "PED-003" a las 12:05
    Cuando el cocinero accede al panel de cocina ("KDS - Kitchen Display System")
    Entonces el sistema muestra los pedidos ordenados cronológicamente del más antiguo al más reciente
    Y la primera comanda visible corresponde a "PED-001"
    Y la segunda comanda corresponde a "PED-002"
    Y la tercera comanda corresponde a "PED-003"

  Escenario: Marcar pedido como listo para entrega
    Dado que el cocinero tiene en pantalla el pedido "PED-001" en estado "En Preparación"
    Cuando finaliza la cocción y empaque de todos los platos de "PED-001"
    Y presiona el botón "Marcar como Listo"
    Entonces el sistema actualiza el estado de "PED-001" a "Listo para Recoger"
    Y envía un evento de notificación inmediata al estudiante titular
    Y retira el pedido de la sección activa de cocina hacia la sección de despacho

  Escenario: Panel de cocina sin pedidos pendientes
    Dado que todos los pedidos del turno han sido preparados y despachados
    Cuando el cocinero visualiza el panel de cocina
    Entonces el sistema muestra el tablero de órdenes vacío
    Y muestra el mensaje informativo "¡Excelente trabajo! No hay pedidos pendientes en cola."
