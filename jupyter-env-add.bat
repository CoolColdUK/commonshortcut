@echo off

conda-add %1 & conda-start %1 & pip install ipykernel & python -m ipykernel install --name=%1 & conda install pywin32 & conda-stop