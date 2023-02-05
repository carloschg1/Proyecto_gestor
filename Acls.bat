@echo off

REM este script creara la carpeta Publico y ademas asignara los permisos a los grupos.

md E:\Publico

icacls E:\Publico /inheritance:d /T
icacls E:\Publico /remove:g Usuarios /T
icacls E:\Publico /remove:g "Usuarios autentificados" /T

icacls E:\Publico /GRANT Publico_R:(R)
icacls E:\Publico /GRANT 1DAM_F:(OI)(CI)(F) /T

md E:\Publico\1ESO E:\Publico\2ESO E:\Publico\3ESO E:\Publico\4ESO E:\Publico\1BACH E:\Publico\2BACH E:\Publico\1DAM   

icacls E:\Publico\1ESO /GRANT 1ESO_F:(OI)(CI)(F) /T
icacls E:\Publico\1ESO /GRANT 1ESO_R:(OI)(CI)(R) /T
icacls E:\Publico\2ESO /GRANT 2ESO_F:(OI)(CI)(F) /T
icacls E:\Publico\2ESO /GRANT 2ESO_R:(OI)(CI)(R) /T
icacls E:\Publico\3ESO /GRANT 3ESO_F:(OI)(CI)(F) /T
icacls E:\Publico\3ESO /GRANT 3ESO_R:(OI)(CI)(R) /T
icacls E:\Publico\4ESO /GRANT 4ESO_F:(OI)(CI)(F) /T
icacls E:\Publico\4ESO /GRANT 4ESO_R:(OI)(CI)(R) /T

icacls E:\Publico\1BACH /GRANT 1BATCH_F:(OI)(CI)(F) /T
icacls E:\Publico\1BACH /GRANT 1BATCH_R:(OI)(CI)(R) /T
icacls E:\Publico\2BACH /GRANT 2BATCH_F:(OI)(CI)(F) /T
icacls E:\Publico\2BACH /GRANT 2BATCH_R:(OI)(CI)(R) /T

exit

