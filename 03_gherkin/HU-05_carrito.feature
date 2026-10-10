# language: es
Característica: HU-05 Gestión de platos en el carrito de compras
  Como estudiante
  Quiero agregar y quitar platos en el carrito de compras
  Para armar mi pedido antes de proceder al pago en UniDelivery

  Escenario: Agregar plato disponible al carrito de compras
    Dado que el estudiante está visualizando el menú del día
    Y el plato "Lomo Saltado" tiene 15 porciones disponibles y un precio de S/ 12.00
    Cuando el estudiante selecciona 2 porciones de "Lomo Saltado"
    Y presiona el botón "Agregar al Carrito"
    Entonces el carrito se actualiza con 2 unidades de "Lomo Saltado"
    Y el subtotal se incrementa en S/ 24.00
    Y se muestra la notificación flotante "Platos agregados al carrito correctamente"

  Escenario: Intentar agregar un plato agotado al carrito
    Dado que el estudiante se encuentra visualizando el menú del día
    Y el plato "Arroz con Pollo" tiene stock en 0 unidades ("Agotado")
    Cuando el estudiante intenta presionar el botón "Agregar al Carrito" en dicho plato
    Entonces el sistema mantiene el botón deshabilitado
    Y muestra la etiqueta visual "Plato Agotado"
    Y no se permite ingresar cantidad ni modificar el carrito

  Escenario: Quitar un plato del carrito de compras
    Dado que el estudiante tiene en su carrito 1 unidad de "Sopa Criolla" por S/ 8.00 y 1 unidad de "Chicha Morada" por S/ 3.00
    Y el total acumulado actual es S/ 11.00
    Cuando el estudiante accede a su carrito y presiona el ícono "Eliminar" en "Sopa Criolla"
    Entonces el sistema retira "Sopa Criolla" del carrito
    Y recalcula el total a pagar actualizándolo a S/ 3.00
    Y muestra el mensaje "Producto eliminado del carrito"
