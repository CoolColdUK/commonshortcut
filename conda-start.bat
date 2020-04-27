@echo off

IF "%~1" == "." GOTO ACTIVATE_HERE
IF [%1] EQU [] GOTO VALUE_MISSING

conda activate %1
GOTO DONE

:ACTIVATE_HERE
for %%F in ("%cd%\.") do set "folder=%%~nxF"
conda activate %folder%
GOTO DONE



:VALUE_MISSING
echo "Value missing"
:DONE
