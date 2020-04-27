@echo off

IF [%1] == [] GOTO NOPROJECT
IF [%2] == [] GOTO NOTEMPLATE

yarn create react-app %1 --template %2
GOTO DONE

:NOTEMPLATE
yarn create react-app %1
GOTO DONE


:NOPROJECT
echo "Project name required"

:DONE