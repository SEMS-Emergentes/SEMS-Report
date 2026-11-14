# US19 · Registro de un medidor en un local (EP04)
Feature: US19 - Registro de un medidor en un local
  Como supervisor, deseo registrar un medidor indicando su local y su zona, para atribuir su consumo al suministro y al área correctos.

  Scenario: Alta correcta
    Given el supervisor indica un local vigente y una zona perteneciente a ese local
    When confirma el alta
    Then el medidor queda asociado a ese local y a esa zona

  Scenario: Zona de otro local
    Given la zona indicada pertenece a un local distinto
    When confirma el alta
    Then la operación se rechaza

  Scenario: Código de medidor duplicado
    Given el código externo del medidor ya está registrado
    When confirma el alta
    Then la operación se rechaza

  Scenario: Límite de medidores del plan alcanzado
    Given el local alcanzó el límite de medidores de su plan
    When el supervisor intenta registrar otro medidor
    Then la operación se rechaza indicando el límite del plan vigente
