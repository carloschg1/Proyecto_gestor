@echo off

REM En este script crearemos los grupos , los usuarios , meteremos a los usuarios dentro de los grupos y gestionaremos las horas de acesso

REM Creamos los grupos ( la S sinvoliza sin acesso , la F full acess y la R permisos de lectura )

net localgroup Publico_R /add
net localgroup 1ESO_F /add
net localgroup 1ESO_R /add
net localgroup 2ESO_F /add
net localgroup 2ESO_R /add
net localgroup 3ESO_F /add
net localgroup 3ESO_R /add
net localgroup 4ESO_F /add
net localgroup 4ESO_R /add
net localgroup 1BATCH_F /add
net localgroup 1BATCH_R /add
net localgroup 2BATCH_F /add
net localgroup 2BATCH_R /add
net localgroup 1DAM_F /add
net localgroup alummado_S /add
net localgroup profesorado_S /add


REM Creamos los usarios y gestionamos las horas de uso

net user usu_1ESO prueba01 /add /times:L-V,08:00-09:00
net user usu_2ESO prueba01 /add /times:L-V,09:00-10:00
net user usu_3ESO prueba01 /add /times:L-V,10:00-11:00
net user usu_4ESO prueba01 /add /times:L-V,11:00-12:00
net user usu_1BATCH prueba01 /add /times:L-V,12:00-13:00
net user usu_2BATCH prueba01 /add /times:L-V,13:00-14:00
net user usu_1DAM admin01 /add /times:L-V,15:00-21:00
net user alumnado prueba01 /add /times:L-V,08:00-21:00
net user profesorado prueba01 /add /times:L-V,08:00-21:00
net user administrador admin01 /add


REM Asignamos los grupos a los usuarios

net localgroup Publico_R usu_1ESO /add
net localgroup Publico_R usu_2ESO /add
net localgroup Publico_R usu_3ESO /add
net localgroup Publico_R usu_4ESO /add
net localgroup Publico_R usu_1BATCH /add
net localgroup Publico_R usu_2BATCH /add
net localgroup 1ESO_F usu_1ESO /add
net localgroup 1ESO_R usu_2ESO /add
net localgroup 1ESO_R usu_3ESO /add
net localgroup 1ESO_R usu_4ESO /add
net localgroup 2ESO_F usu_2ESO /add
net localgroup 2ESO_R usu_1ESO /add
net localgroup 2ESO_R usu_3ESO /add
net localgroup 2ESO_R usu_4ESO /add
net localgroup 3ESO_F usu_3ESO /add
net localgroup 3ESO_R usu_1ESO /add
net localgroup 3ESO_R usu_2ESO /add
net localgroup 3ESO_R usu_4ESO /add
net localgroup 4ESO_F usu_4ESO /add
net localgroup 4ESO_R usu_1ESO /add
net localgroup 4ESO_R usu_2ESO /add
net localgroup 4ESO_R usu_3ESO /add
net localgroup 1BATCH_F usu_1BATCH /add
net localgroup 1BATCH_R usu_2BATCH /add
net localgroup 2BATCH_F usu_2BATCH /add
net localgroup 2BATCH_R usu_1BATCH /add
net localgroup 1DAM_F usu_1DAM /add
net localgroup administradores usu_1DAM /add
net localgroup alummado_S alumnado /add
net localgroup profesorado_S profesorado /add
net localgroup administradores admin01 /add

exit



