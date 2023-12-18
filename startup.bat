@echo off
REM Check if the virtual environment exists
if not exist venv (
    REM Create the virtual environment
    python -m venv venv
)

REM Activate the virtual environment
venv\Scripts\Activate.ps1

REM Install libraries from requirements.txt
pip install -r requirements.txt

REM Run a specific Jupyter Notebook
call jupyter nbconvert --execute --inplace C:\Users\USER\Wayne\LSTM\notebooks\time-series.ipynb

