@echo off
echo 🍞 Padaria Pão de Mel - Acesso Mobile
echo ======================================

echo.
echo 📱 Iniciando servidor local...
start python -m http.server 8000

echo.
echo 🌐 Aguarde 3 segundos...
timeout /t 3 /nobreak

echo.
echo 🚀 Criando túnel público com ngrok...
ngrok http 8000

echo.
echo ✅ Pronto! Use a URL do ngrok no celular!
echo.
pause
