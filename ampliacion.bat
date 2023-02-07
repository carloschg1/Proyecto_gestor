@echo off

REM en este script creamos la carpeta IES POLITECNIC y permitios el acesso solamente a los usuarios del mismo curso

md E:\Politecnic

icacls E:\Politecnic /inheritance:d /T
icacls E:\Politecnic /remove:g Usuarios /T
icacls E:\Politecnic /remove:g "Usuarios autentificados" /T

icacls E:\Politecnic /GRANT Publico_R:(R)

md E:\Politecnic\1ESO E:\Politecnic\2ESO E:\Politecnic\3ESO E:\Politecnic\4ESO E:\Politecnic\1BACH E:\Politecnic\2BACH E:\Politecnic\1DAM   

icacls E:\Politecnic\1ESO /GRANT 1ESO_F:(OI)(CI)(R) /T
icacls E:\Politecnic\2ESO /GRANT 2ESO_F:(OI)(CI)(R) /T
icacls E:\Politecnic\3ESO /GRANT 3ESO_F:(OI)(CI)(R) /T
icacls E:\Politecnic\4ESO /GRANT 4ESO_F:(OI)(CI)(R) /T

icacls E:\Politecnic\1BACH /GRANT 1BATCH_F:(OI)(CI)(R) /T
icacls E:\Politecnic\2BACH /GRANT 2BATCH_F:(OI)(CI)(R) /T

icacls E:\Politecnic /GRANT 1DAM_F:(OI)(CI)(R) /T

exit

