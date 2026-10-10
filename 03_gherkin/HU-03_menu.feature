# language: es
Característica: HU-03 Visualización del menú del día
  Como estudiante
  Quiero ver el menú del día de la cafetería universitaria
  Para conocer los platos disponibles, precios y opciones antes de comprar

  Escenario: Visualización exitosa del menú del día disponible
    Dado que el estudiante ha iniciado sesión en UniDelivery
    Y la cafetería ha publicado el menú del día actual con platos de fondo, bebidas y postres
    Cuando el estudiante accede a la sección "Menú del Día"
    Entonces el sistema muestra el listado de platos disponibles para la fecha
    Y cada plato muestra su nombre, descripción, precio en soles, imagen y disponibilidad de stock
    Y el estudiante puede interactuar para ver detalles de cada ítem

  Escenario: Menú del día no publicado o cafetería cerrada
    Dado que el estudiante ha iniciado sesión en UniDelivery
    Y la cafetería universitaria aún no ha cargado ni publicado el menú para la fecha
    Cuando el estudiante accede a la sección "Menú del Día"
    Entonces el sistema no muestra lista de platos
    Y muestra el mensaje informativo "El menú de hoy aún no ha sido publicado. Por favor, vuelve a consultar a partir de las 10:30 AM."
    Y ofrece un botón para "Recargar Menú"
