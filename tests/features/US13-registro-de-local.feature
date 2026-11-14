# US13 · Registro de un local (EP03)
Feature: US13 - Registro de un local
  Como administrador, deseo registrar un local con su potencia contratada y su categoría tarifaria, para que el sistema calcule sobre la tarifa que realmente le aplica.

  Scenario: Alta correcta
    Given el administrador proporciona código, nombre, potencia contratada mayor que cero y categoría tarifaria válida
    When confirma el alta
    Then el local queda registrado en la organización con estado activo

  Scenario: Código duplicado
    Given el código de local ya existe en esa organización
    When confirma el alta
    Then la operación se rechaza

  Scenario: Potencia no válida
    Given la potencia contratada es cero o negativa
    When confirma el alta
    Then la operación se rechaza

  Scenario: Exclusión de domingos no indicada
    Given el administrador no indica si el suministro excluye domingos de la hora punta
    When confirma el alta
    Then el local se registra sin la exclusión de domingos
