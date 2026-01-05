@echo off
echo ========================================
echo   Fitness Tracker - Local Web Server
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed or not in PATH
    echo Please install Python from https://www.python.org/downloads/
    echo.
    pause
    exit /b 1
)

echo Starting web server...
echo.
echo Your Fitness Tracker is now running at:
echo.
echo     http://localhost:8000/fitness-tracker.html
echo.
echo Press Ctrl+C to stop the server
echo ========================================
echo.

REM Start Python HTTP server
python -m http.server 8000

pause
