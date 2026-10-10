# language: es
Característica: HU-02 Inicio de sesión de usuarios registrados
  Como estudiante registrado
  Quiero iniciar sesión con mis credenciales
  Para acceder a mi cuenta y gestionar mis pedidos en UniDelivery

  Escenario: Inicio de sesión exitoso con credenciales válidas
    Dado que el estudiante tiene una cuenta activa con el correo "carlos.mendoza@upn.pe" y contraseña "Segura123*"
    Y se encuentra en la pantalla de inicio de sesión
    Cuando ingresa el correo "carlos.mendoza@upn.pe" y la contraseña "Segura123*"
    Y presiona el botón "Iniciar Sesión"
    Entonces el sistema autentica al estudiante satisfactoriamente
    Y redirige al usuario a la pantalla principal con el menú del día
    Y muestra el saludo de bienvenida "¡Hola, Carlos!"

  Escenario: Inicio de sesión fallido por contraseña incorrecta
    Dado que el estudiante tiene una cuenta activa con el correo "carlos.mendoza@upn.pe"
    Y se encuentra en la pantalla de inicio de sesión
    Cuando ingresa el correo "carlos.mendoza@upn.pe" y una contraseña errónea "PasswordErroneo"
    Y presiona el botón "Iniciar Sesión"
    Entonces el sistema deniega el acceso a la cuenta
    Y muestra el mensaje de error "Credenciales incorrectas. Verifique su correo o contraseña."
    Y el contador de intentos fallidos se incrementa en 1

  Escenario: Bloqueo de cuenta tras cinco intentos fallidos consecutivos
    Dado que el estudiante tiene 4 intentos fallidos previos acumulados
    Y se encuentra en la pantalla de inicio de sesión ingresando su correo "carlos.mendoza@upn.pe"
    Cuando ingresa por quinta vez consecutiva una contraseña incorrecta
    Y presiona el botón "Iniciar Sesión"
    Entonces el sistema bloquea temporalmente la cuenta por 15 minutos por motivos de seguridad
    Y muestra el mensaje "Su cuenta ha sido bloqueada tras 5 intentos fallidos. Intente nuevamente en 15 minutos o restablezca su contraseña."
