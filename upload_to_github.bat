@echo off
echo ========================================================
echo UPLOADING MARVEL STUDIOS CODE TO GITHUB...
echo ========================================================
echo.
cd /d "%~dp0"

echo Connecting to GitHub repository...
git remote remove origin 2>nul
git remote add origin https://github.com/Hdkerr1/marvel.git

echo.
echo Preparing branch...
git branch -M main

echo.
echo ========================================================
echo IMPORTANT: A browser window or login popup may appear now.
echo Please log in to your GitHub account to authorize the upload.
echo ========================================================
echo.

git push -u origin main

echo.
echo ========================================================
if %errorlevel% neq 0 (
    echo ERROR: Upload failed. Please make sure you logged in correctly.
) else (
    echo SUCCESS! All files have been uploaded to GitHub.
    echo Check your repository here: https://github.com/Hdkerr1/marvel
)
echo ========================================================
echo.
pause
