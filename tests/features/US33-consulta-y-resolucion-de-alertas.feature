# US33 · Consulta y resolución de alertas (EP06)
Feature: US33 - Consulta y resolución de alertas
  Como supervisor, deseo revisar y marcar como resueltas las alertas de mi local, para llevar control de las atendidas.

  Scenario: Consulta de alertas
    Given existen alertas generadas para el usuario
    When consulta el listado
    Then se presentan con su severidad, mensaje y estado

  Scenario: Resolución de una alerta
    Given existe una alerta activa
    When el supervisor la marca como resuelta
    Then su estado cambia a resuelta y se registra la fecha de resolución

  Scenario: Sin alertas
    Given no existen alertas para el usuario
    When consulta el listado
    Then se obtiene un listado vacío
