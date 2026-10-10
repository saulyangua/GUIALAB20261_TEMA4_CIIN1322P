# language: es
Característica: HU-01 Registro de estudiante con correo institucional
  Como estudiante universitario
  Quiero registrarme con mi correo institucional
  Para acceder de forma segura y validada a la plataforma de pedidos de UniDelivery

  Escenario: Registro exitoso con correo institucional válido
    Dado que el estudiante se encuentra en la pantalla de registro
    Cuando ingresa su nombre "Carlos Mendoza", su código "N00123456" y su correo institucional "carlos.mendoza@upn.pe"
    Y define una contraseña segura de 8 caracteres con números y letras
    Y presiona el botón "Registrarse"
    Entonces el sistema crea la cuenta de usuario exitosamente
    Y envía un enlace de activación al correo "carlos.mendoza@upn.pe"
    Y muestra el mensaje "Registro exitoso. Por favor revisa tu bandeja institucional para activar tu cuenta."

  Escenario: Intento de registro con correo no institucional
    Dado que el estudiante se encuentra en la pantalla de registro
    Cuando ingresa el correo personal "carlos.mendoza@gmail.com"
    Y completa los demás campos requeridos
    Y presiona el botón "Registrarse"
    Entonces el sistema no permite el registro
    Y muestra el mensaje de error "Solo se admiten correos institucionales con dominio @upn.pe"

  Escenario: Intento de registro con un correo ya registrado
    Dado que existe una cuenta previamente registrada con el correo "ana.torres@upn.pe"
    Y un nuevo usuario se encuentra en la pantalla de registro
    Cuando ingresa el correo institucional "ana.torres@upn.pe"
    Y presiona el botón "Registrarse"
    Entonces el sistema rechaza la solicitud de registro
    Y muestra el mensaje de advertencia "El correo institucional ya se encuentra registrado. Inicia sesión o recupera tu contraseña."
