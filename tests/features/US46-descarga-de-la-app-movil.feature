# US46 · Descarga de la app móvil desde la Landing Page (EP01)
Feature: US46 - Descarga de la app móvil desde la Landing Page
  Como visitante, deseo descargar la aplicación móvil desde la Landing Page, para supervisar mis locales desde el celular.

  Scenario: Descarga desde la Landing Page
    Given el visitante está en la Landing Page
    When selecciona la opción de descargar la aplicación móvil
    Then obtiene el instalador de la última versión publicada

  Scenario: Acceso desde la aplicación web
    Given el usuario inició sesión en la aplicación web
    When busca la aplicación móvil
    Then encuentra el enlace de descarga de la última versión
