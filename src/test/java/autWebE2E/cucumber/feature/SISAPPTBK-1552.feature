# Author: CFVG4708
# Date: Julio 2025

Feature: [Android] - Agregar pantallas para el desarrollo de Descarga mis ventas
# Objetivo QA: Validar la correcta visualización y disposición de los elementos
# en las pantallas asociadas a la iniciativa 'Descarga mis ventas', asegurando
# consistencia funcional y visual según los criterios definidos en la HU SISAPPTBK-1552.

  Background:
    Given tengo la aplicacion appTBK instalada y la ejecuto con la ultima version de Android
    And inicio sesion con el Rut 12553470-8 y con la clave Tbk.2022
    And hago click en organización COMERCIAL FERRAT SPA
    And ingreso 1111 como PIN de seguridad
    And reingreso 1111 para confirmar PIN de seguridad
    And hago click en botón EMPEZAR
    And hago click en boton OMITIR

  @XRAPPT-2917 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.1 [AUT] Validar visualización de elementos en pantalla módulo VENTAS
    Given estoy en la pantalla del modulo HOME
    When hago click en modulo VENTAS
    Then visualizo card resumen con total de ventas actualizadas
    And visualizo las tres últimas transacciones con monto, medio de pago, hora y estado
    And visualizo link VER TODAS correctamente ubicado y visible

  @XRAPPT-2918 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.2 [AUT] Validar visualización de elementos en pantalla RESÚMENES de ventas
    Given estoy en la pantalla del modulo VENTAS
    When hago click en link VER TODAS en el modulo VENTAS
    Then visualizo card resumen con subtotales por medio de pago: Debito, Credito y Prepago
    And visualizo lista completa de transacciones del dia
    And visualizo boton BUSCAR VENTAS entre el resumen y la lista

  @XRAPPT-2919 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.3 [AUT] Validar visualización de elementos en pantalla BUSCAR VENTAS
    Given estoy en la pantalla RESUMENES de ventas
    When hago click en boton BUSCAR VENTAS
    Then visualizo filtro TIPO DE VENTA
    And visualizo filtro PERIODO DE TIEMPO
    And visualizo filtro DETERMINAR FECHA
    And visualizo filtro RANGO DEL MONTO
    And visualizo filtro CODIGO DE COMERCIO
    And visualizo boton FILTRAR
    And visualizo boton BORRAR FILTROS

  @XRAPPT-2920 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.4 [AUT] Validar visualización de elementos en pantalla RESULTADO DE BÚSQUEDA
    Given estoy en la pantalla BUSCAR VENTAS
    And hago click en boton FILTRAR
    Then visualizo mensaje con la cantidad total de transacciones encontradas
    And visualizo mensaje con la cantidad maxima descargable de 1000 transacciones
    And visualizo boton COMPARTIR VENTAS correctamente ubicado
    And visualizo lista de transacciones en formato completo

  @XRAPPT-2921 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.4a [AUT] Validar visualización de elementos en pantalla RESULTADO DE BÚSQUEDA sin resultados
    Given estoy en la pantalla BUSCAR VENTAS
    And hago click en boton FILTRAR
    # En desarrollo
    Then visualizo mensaje de error respectivos

  @XRAPPT-2922 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.5a [AUT] Validar visualización de elementos en pantalla de DESCARGA EXITOSA
    Given que estoy en la pantalla RESULTADO DE BUSQUEDA
    And hago click en boton COMPARTIR VENTAS
    Then visualizo mensaje DESCARGA EXITOSA
    And visualizo boton COMPARTIR

  @XRAPPT-2923 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.5b [AUT] Validar visualización de elementos en pantalla de DESCARGA FALLIDA
    Given que estoy en la pantalla RESULTADO DE BUSQUEDA
    And hago click en boton COMPARTIR VENTAS
    Then visualizo mensaje NO PODEMOS DESCARGAR TU SOLICITUD
    And visualizo boton REINTENTAR

  @XRAPPT-2924 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.6 [AUT] Validar visualización de elementos en segunda pantalla de DESCARGA FALLIDA
    Given que estoy en la pantalla de DESCARGA FALLIDA
    And hago click 3 veces en boton REINTENTAR
    Then visualizo mensaje NO PODEMOS DESCARGAR TU SOLICITUD EN ESTE MOMENTO
    And visualizo boton ACEPTAR

  @XRAPPT-2925 @XRAPPT-2917 @DescargaMisVentas @RegresionTest @Android
  Scenario: CP1552.7 [AUT] Validar regreso a pantalla BUSCAR VENTAS desde segunda pantalla de DESCARGA FALLIDA
    Given que estoy en la segunda pantalla de DESCARGA FALLIDA
    And visualizo boton ACEPTAR
    When hago click en boton ACEPTAR
    Then visualizo la pantalla BUSCAR VENTAS
