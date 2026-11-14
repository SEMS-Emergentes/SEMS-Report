# US06 · Registro de cuenta (EP02)
Feature: US06 - Registro de cuenta
  Como visitante, deseo crear una cuenta con mi correo y contraseña, para acceder a la aplicación.

  Scenario: Registro correcto
    Given el visitante proporciona un correo no registrado y una contraseña válida
    When confirma el registro
    Then la cuenta se crea y se emite un token de sesión

  Scenario: Correo ya registrado
    Given el visitante proporciona un correo existente
    When confirma el registro
    Then el sistema informa que el correo ya está en uso
    And no se crea una cuenta duplicada

  Scenario: Correo con formato inválido
    Given el visitante proporciona un correo sin formato válido
    When confirma el registro
    Then la operación se rechaza indicando el formato esperado
