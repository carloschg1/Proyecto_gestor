@echo off
cls
title Titulo de la aplicacion
echo  Bienvenido %USERNAME%    
echo  Hoy es %DATE% 
echo  Y la hora actual es %TIME% 
color A
echo "                                                        "
echo "  ______                       __                       "
echo "  /      \                     |  \                     "
echo " |  $$$$$$\  ______    ______  | $$  ______    _______  "
echo " | $$   \$$ |      \  /      \ | $$ /      \  /       \ "
echo " | $$        \$$$$$$\|  $$$$$$\| $$|  $$$$$$\|  $$$$$$$ "
echo " | $$   __  /      $$| $$   \$$| $$| $$  | $$ \$$    \  "
echo " | $$__/  \|  $$$$$$$| $$      | $$| $$__/ $$ _\$$$$$$\ "
echo "  \$$    $$ \$$    $$| $$      | $$ \$$    $$|       $$ "
echo "   \$$$$$$   \$$$$$$$ \$$       \$$  \$$$$$$  \$$$$$$$  "
echo "                                                        "
echo "                                                        "

::##############
:: MENU GRÁFICO
::##############

:menu
REM cls

echo 	++++++++++++++++++++++++++++++++++++++++++++
echo 	+   Programa de Carlos Hernandez Garcia    +
echo 	+             Gestor Documental            +
echo 	++++++++++++++++++++++++++++++++++++++++++++
echo.
echo Selecciona la opcion deseada
echo ----------------------------
echo.
echo 1. Creacion de usuarios-grupos locales
echo 2. Creacion Gestor Documental
echo 3. Borrado Gestor Documental
echo 4. Borrado de los usuarios-grupos locales
echo 5. Creacion del proyecto compartido
echo 6. Borrado del proyecto compartido
echo 7. Ayuda
echo S. Salir de la aplicacion.
echo.

:: Aquí creamos el menú de selección.

set /p opcionMenu=Selecciona la opcion (1, 2, 3, 4, 5, 6, 7 o S) y pulsa ENTER:
if %opcionMenu%==1 goto opcion1
if %opcionMenu%==2 goto opcion2
if %opcionMenu%==3 goto opcion3
if %opcionMenu%==4 goto opcion4
if %opcionMenu%==5 goto opcion5
if %opcionMenu%==6 goto opcion6
if %opcionMenu%==7 goto opcion7
if %opcionMenu%==S goto fin
:: Si no se pulsa ninguna de las opciones, volvemos al menú
echo "Pulsa una opcion valida"
pause >null

:: ###########################
:: ZONA DE ETIQUETAS/FUNCIONES
:: ###########################
:opcion7
  echo "Bienvenido a la ayuda"
  TYPE C:\Users\chernandez\Desktop\ayuda.txt
  pause
  goto menu
:opcion6
  echo "Has pulsado 6"
  echo "Borrando el proyecto compartido ..."
  C:\Users\chernandez\Desktop\borrado_ampliacion.bat
  echo "Borrado del proyecto compartido completado"
  pause
  goto menu
:opcion5
  echo "Has pulsado 5"
  echo "Creando el proyecto compartido ..."
  C:\Users\chernandez\Desktop\ampliacion.bat
  echo "Creacion del proyecto compartido completada"
  pause
  goto menu
:opcion4
  ECHO "Has pulsado 4"
  echo "Borrando todos los grupos y usurios ..."
  C:\Users\chernandez\Desktop\borrado_usuarios.bat
  echo "Borrando completado "
  pause
  goto menu
:opcion3
  echo "Has pulsado 3"
  echo "Borrando el gestor docuemntal:"
  C:\Users\chernandez\Desktop\borrado_proyecto.bat
  echo Borrado del gestor documental completada"
  pause 
  goto menu
:opcion2
  echo "Has pulsado 2"
  echo "Creando el gestor documental ..."
  C:\Users\chernandez\Desktop\Acls.bat
  echo "Creacion del gestor documental completada"
  pause
  goto menu
:opcion1
  echo "Has pulsado 1"
  echo "Creando todos los grupos y usurios ..."
  C:\Users\chernandez\Desktop\usu_grup.bat
  REM C:\Users\chernandez\Desktop\ocultar.bat
  echo "Creacion de usuarios y grupos completada "
  goto menu
:fin
echo "Nos vamos de la App......."