@echo off

REM En este script borraremos los grupos y los usuarios

net user usu_1ESO /delete
net user usu_2ESO /delete
net user usu_3ESO /delete
net user usu_4ESO /delete
net user usu_1BATCH /delete
net user usu_2BATCH /delete
net user usu_1DAM /delete
net user alumnado /delete
net user profesorado /delete
net user administrador /delete

REM Borramos los grupo

net localgroup 1ESO_F /delete
net localgroup 1ESO_R /delete
net localgroup 2ESO_F /delete
net localgroup 2ESO_R /delete
net localgroup 3ESO_F /delete
net localgroup 3ESO_R /delete
net localgroup 4ESO_F /delete
net localgroup 4ESO_R /delete
net localgroup 1BATCH_F /delete
net localgroup 1BATCH_R /delete
net localgroup 2BATCH_F /delete
net localgroup 2BATCH_R /delete
net localgroup 1DAM_F /delete
net localgroup alummado_S /delete
net localgroup profesorado_S /delete
