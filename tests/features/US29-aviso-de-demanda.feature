# US29 · Aviso de demanda con margen (EP06)
Feature: US29 - Aviso de demanda con margen
  Como responsable, deseo recibir un aviso cuando la demanda de mi local se acerca a la potencia contratada, para reducir carga antes del recargo.

  Scenario: Demanda en el umbral de aviso
    Given existe una regla de demanda activa con umbral de aviso
    When la demanda registrada alcanza o supera el umbral sin superar la potencia contratada
    Then se genera una alerta de severidad warning
    And la alerta indica cuántos kW de margen quedan

  Scenario: Demanda igual a la potencia contratada
    Given existe una regla de demanda activa
    When la demanda registrada es igual a la potencia contratada
    Then se genera una alerta de severidad warning y no de exceso

  Scenario: Umbral no configurado
    Given el local no tiene reglas de demanda activas
    When se registra una demanda
    Then no se genera ninguna alerta de demanda

  Scenario: Servidor de correo no disponible
    Given el canal de notificación por correo no está disponible
    When se genera una alerta de demanda
    Then la alerta queda registrada
    And el intento fallido de envío queda en el registro de notificaciones
