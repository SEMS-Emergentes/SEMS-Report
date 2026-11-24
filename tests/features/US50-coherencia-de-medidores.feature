# US50 · Coherencia de los datos de medidores (EP04)
Feature: US50 - Coherencia de los datos de medidores
  Como supervisor, deseo que los medidores muestren la misma lectura que usa el resumen, para confiar en las cifras que reviso.

  Scenario: Lectura del medidor
    Given un medidor envió lecturas en el periodo
    When el supervisor consulta el medidor
    Then se muestra su última lectura y su potencia, coherentes con el resumen

  Scenario: Equipos con lecturas
    Given el local tiene equipos con lecturas atribuidas
    When el supervisor abre el monitoreo en la aplicación móvil
    Then se listan los equipos con su consumo sin mostrar un error
