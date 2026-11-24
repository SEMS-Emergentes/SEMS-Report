# US49 · Terminología consistente en español (EP05)
Feature: US49 - Terminología consistente en español
  Como usuario, deseo que los planes, los tipos de equipo y las alertas usen los mismos nombres en español en todas las pantallas, para no dudar de lo que estoy viendo.

  Scenario: Nombre del plan
    Given una sección está bloqueada por el plan actual
    When el usuario lee el mensaje de la sección
    Then el plan mencionado es uno de los planes que muestra Suscripción

  Scenario: Tipos de equipo
    Given el idioma de la aplicación es español
    When el usuario consulta sus equipos
    Then los tipos de equipo se muestran en español

  Scenario: Tipo de alerta
    Given se generó una alerta de demanda
    When el usuario la consulta en la aplicación móvil
    Then la alerta se identifica como de demanda y no como de umbral
