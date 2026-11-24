# US45 · Continuidad desde la Landing Page (EP01)
Feature: US45 - Continuidad desde la Landing Page
  Como visitante, deseo que el segmento y el plan que elijo en la Landing Page me acompañen al registrarme en la aplicación, para no tener que repetir mi elección.

  Scenario: Segmento elegido
    Given el visitante eligió el segmento de cadenas en la Landing Page
    When abre el formulario de registro de la aplicación web
    Then el segmento de cadenas aparece seleccionado

  Scenario: Plan elegido
    Given el visitante eligió el plan Business en la Landing Page
    When completa su registro
    Then la aplicación abre Suscripción con el plan Business destacado

  Scenario: Sin elección previa
    Given el visitante llega al registro sin segmento ni plan
    When abre el formulario de registro
    Then el formulario se muestra sin opciones preseleccionadas
