@echo off
echo.
echo ========================================
echo    📱 TESTAR APP PADARIA PAO DE MEL
echo ========================================
echo.
echo 1. Iniciando servidor local...
python -m http.server 8000 --bind 0.0.0.0
echo.
echo 2. Acesse no celular:
echo    http://192.168.1.7:8000/pão-de-mel.html
echo.
echo 3. Toque no botão 📱 no header
echo 4. Siga as instruções para instalar
echo.
echo ========================================
echo    ✅ APP FUNCIONANDO!
echo ========================================
pause
