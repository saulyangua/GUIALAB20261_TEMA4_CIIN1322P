# language: es
Característica: HU-06 Pago de pedido con tarjeta de débito o crédito
  Como estudiante
  Quiero pagar mi pedido con tarjeta bancaria en línea
  Para agilizar mi compra y evitar el uso de dinero en efectivo

  Escenario: Pago exitoso con tarjeta bancaria válida
    Dado que el estudiante tiene un carrito confirmado con un total de S/ 25.00
    Y ha seleccionado el punto de recojo "Cafetería Central - Módulo 2"
    Y elige el método de pago "Tarjeta de Débito/Crédito"
    Cuando ingresa los datos de una tarjeta válida con fondos suficientes
    Y presiona el botón "Pagar S/ 25.00"
    Entonces la pasarela de pagos aprueba la transacción financiera
    Y el sistema genera un número de pedido único como "PED-2026-0045"
    Y la orden se envía automáticamente a la cola de preparación de cocina
    Y muestra la pantalla de confirmación con el mensaje "¡Pago exitoso! Tu pedido ha sido confirmado."

  Escenario: Pago con tarjeta rechazado por fondos insuficientes o datos erróneos
    Dado que el estudiante se encuentra en la pantalla de pago con un total de S/ 30.00
    Cuando ingresa una tarjeta bancaria sin saldo suficiente o con CVV incorrecto
    Y presiona el botón "Pagar S/ 30.00"
    Entonces la pasarela de pagos rechaza el cobro con el código "TRANSACCION_RECHAZADA"
    Y el sistema no genera orden de pedido para cocina
    Y muestra el mensaje de error "El pago fue rechazado por el banco emisor. Por favor verifica tus datos o intenta con otra tarjeta."
    Y ofrece la opción de reintentar el pago sin perder los productos del carrito

  Escenario: Pasarela de pagos no disponible por caída de servicio
    Dado que el estudiante se encuentra listo para pagar en el checkout
    Cuando la pasarela de pagos externa sufre un tiempo de espera agotado (timeout) o caída de servicio
    Y el estudiante presiona "Pagar S/ 20.00"
    Entonces el sistema detecta la falta de respuesta del servicio de pagos
    Y no descuenta dinero de la cuenta del usuario
    Y muestra el mensaje "El servicio de pasarela de pagos no se encuentra disponible momentáneamente. Por favor, intenta de nuevo en unos minutos."
