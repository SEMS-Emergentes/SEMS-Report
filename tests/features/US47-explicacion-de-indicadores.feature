# US47 · Explicación de indicadores energéticos (EP07)
Feature: US47 - Explicación de indicadores energéticos
  Como responsable, deseo una explicación breve de los indicadores que no domino, como el ahorro de la quincena o el cargo por potencia, para interpretarlos sin ayuda técnica.

  Scenario: Ahorro negativo
    Given el consumo de la quincena actual superó al de la anterior
    When el responsable consulta el ahorro de la quincena
    Then el indicador explica que un valor negativo significa que gastó más que la quincena anterior

  Scenario: Concepto eléctrico
    Given el responsable ve la potencia contratada o el cargo por potencia
    When consulta la ayuda del indicador
    Then se muestra una explicación breve del concepto en lenguaje cotidiano
