# US26 · Consumo desglosado por zona (EP05)
Feature: US26 - Consumo desglosado por zona
  Como supervisor, deseo ver el consumo agrupado por zona, para identificar qué área concentra el gasto.

  Scenario: Zonas con medidores
    Given el local tiene zonas con medidores asignados
    When el supervisor consulta el consumo por zona
    Then se presenta el consumo agregado de cada zona en el periodo

  Scenario: Medidores sin zona
    Given el local tiene medidores sin zona asignada
    When el supervisor consulta el consumo por zona
    Then el consumo de esos medidores se presenta agrupado como "sin zona"

  Scenario: Local sin lecturas en el periodo
    Given ningún medidor del local reportó lecturas en el periodo
    When el supervisor consulta el consumo por zona
    Then se presenta consumo cero para cada zona
