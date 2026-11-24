# US48 · Identificación del local consultado (EP03)
Feature: US48 - Identificación del local consultado
  Como responsable de varios locales, deseo ver y cambiar desde el resumen el local que estoy consultando, para no confundir las cifras de un local con las de otro.

  Scenario: Local visible
    Given el responsable administra más de un local
    When abre el resumen
    Then el nombre del local consultado se muestra en el encabezado

  Scenario: Cambio de local
    Given el responsable está viendo el resumen de un local
    When elige otro local en el selector
    Then las cifras del resumen corresponden al local elegido

  Scenario: Primer ingreso
    Given el responsable acaba de iniciar sesión
    When llega al resumen
    Then se muestra el resumen de su primer local sin pedirle que lo seleccione
