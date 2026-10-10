# language: es
Característica: HU-07 Consulta y seguimiento del estado del pedido
  Como estudiante
  Quiero ver el estado de mi pedido en tiempo real
  Para saber cuándo está listo y recogerlo o recibirlo sin hacer cola

  Escenario: Consultar estado de un pedido en proceso de preparación
    Dado que el estudiante ha completado el pago del pedido "PED-2026-0045"
    Y la cocina ha cambiado su estado a "En Preparación"
    Cuando el estudiante accede a la pestaña "Mis Pedidos"
    Entonces el sistema muestra el pedido "PED-2026-0045" con el indicador visual "En Preparación"
    Y muestra una estimación de tiempo restante de "8 minutos"
    Y detalla los productos que componen la orden

  Escenario: Notificación de pedido listo para recoger
    Dado que el estudiante tiene el pedido "PED-2026-0045" en estado "En Preparación"
    Cuando el cocinero finaliza la elaboración y cambia el estado a "Listo para Recoger"
    Entonces el sistema actualiza en tiempo real la pantalla del estudiante a "Listo para Recoger"
    Y emite una notificación sonora y visual indicando "¡Tu pedido PED-2026-0045 está listo! Acércate al Módulo 2 con tu código."

  Escenario: Consultar estado cuando no existen pedidos activos
    Dado que el estudiante no ha realizado pedidos en el día o todos sus pedidos anteriores ya fueron entregados
    Cuando el estudiante ingresa a la pestaña "Mis Pedidos"
    Entonces el sistema no muestra pedidos en curso
    Y muestra el mensaje amigable "No tienes pedidos activos en este momento."
    Y muestra un botón de acceso directo "Ver Menú del Día"
