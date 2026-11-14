# US07 · Inicio de sesión (EP02)
Feature: US07 - Inicio de sesión
  Como usuario registrado, deseo iniciar sesión, para acceder a la información de mis locales.

  Scenario: Credenciales correctas
    Given el usuario proporciona credenciales válidas
    When confirma el inicio de sesión
    Then se emite un token de sesión y accede a la aplicación

  Scenario: Credenciales incorrectas
    Given el usuario proporciona una contraseña incorrecta
    When confirma el inicio de sesión
    Then el acceso se rechaza sin revelar si el correo existe

  Scenario: Inicio de sesión con Google
    Given el usuario tiene una cuenta de Google válida
    When se autentica con Google
    Then se emite un token de sesión asociado a su correo
