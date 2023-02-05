@echo off

REM en este script creamos la carpeta IES POLITECNIC y permitios el acesso solamente a los usuarios del mismo curso

md E:\"I.E.S Politecnic"

icacls E:\"I.E.S Politecnic" /inheritance:d /T
icacls E:\"I.E.S Politecnic" /remove:g Usuarios /T
icacls E:\"I.E.S Politecnic" /remove:g "Usuarios autentificados" /T

icacls E:\"I.E.S Politecnic" /GRANT Publico_R:(R)

md E:\"I.E.S Politecnic"\1ESO E:\"I.E.S Politecnic"\2ESO E:\"I.E.S Politecnic"\3ESO E:\"I.E.S Politecnic"\4ESO E:\"I.E.S Politecnic"\1BACH E:\"I.E.S Politecnic"\2BACH E:\"I.E.S Politecnic"\1DAM   

icacls E:\"I.E.S Politecnic"\1ESO /GRANT 1ESO_F:(OI)(CI)(R) /T
icacls E:\"I.E.S Politecnic"\2ESO /GRANT 2ESO_F:(OI)(CI)(R) /T
icacls E:\"I.E.S Politecnic"\3ESO /GRANT 3ESO_F:(OI)(CI)(R) /T
icacls E:\"I.E.S Politecnic"\4ESO /GRANT 4ESO_F:(OI)(CI)(R) /T

icacls E:\"I.E.S Politecnic"\1BACH /GRANT 1BATCH_F:(OI)(CI)(R) /T
icacls E:\"I.E.S Politecnic"\2BACH /GRANT 2BATCH_F:(OI)(CI)(R) /T

icacls E:\"I.E.S Politecnic"\1DAM /GRANT 1DAM_F:(OI)(CI)(F) /T


