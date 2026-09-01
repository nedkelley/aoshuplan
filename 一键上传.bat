@echo off
cd /d "%~dp0"

echo ================================================
echo   Lesson-plan repo one-click upload script
echo ================================================

REM ===== Edit these 3 values first =====
set MY_NAME=nedkelley
set MY_EMAIL=77333950@qq.com
set REMOTE_URL=https://github.com/nedkelley/aoshuplan.git
REM ======================================

echo.
echo [1/5] Checking git ...
git --version >nul 2>&1
if errorlevel 1 goto :no_git

echo.
echo [2/5] Initializing repo ...
if exist ".git" goto :has_repo
git init
goto :init_done

:has_repo
echo Already a git repo, skip init.

:init_done
echo.
echo [3/5] Setting identity ...
git config user.name "%MY_NAME%"
git config user.email "%MY_EMAIL%"

echo.
echo [4/5] Adding and committing ...
git add .
git commit -m "lesson plan update"

echo.
echo [5/5] Linking remote and pushing ...
git remote remove origin 2>nul
git remote add origin "%REMOTE_URL%"
git branch -M main
git push -u origin main

echo.
echo ================================================
echo   Done! If push failed, check:
echo   1. REMOTE_URL is correct
echo   2. GitHub has an empty repo "aoshuplan" created
echo   3. Logged in to GitHub / token configured
echo ================================================
pause
exit /b 0

:no_git
echo.
echo Git not found. Install Git for Windows first, then retry.
pause
exit /b 1
