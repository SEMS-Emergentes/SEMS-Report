# US41 · Contratación de un plan (EP08)
Feature: US41 - Contratación de un plan
  Como administrador, deseo contratar un plan, para habilitar las funcionalidades que necesita mi organización.

  Scenario: Contratación correcta
    Given el administrador selecciona un plan y un método de pago válido
    When confirma la contratación
    Then la suscripción queda activa para la organización
    And se habilitan los límites correspondientes al plan

  Scenario: Pago rechazado
    Given el método de pago es rechazado por la pasarela
    When confirma la contratación
    Then la suscripción no se activa
    And el pago queda registrado con estado fallido

  Scenario: Cambio de plan desde suscripción cancelada
    Given la suscripción de la organización está cancelada
    When el administrador intenta cambiar de plan
    Then la operación se rechaza indicando que la suscripción está en un estado final
