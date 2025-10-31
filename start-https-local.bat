@echo off
echo 🍞 Padaria Pão de Mel - HTTPS Local para PWA
echo =============================================

echo.
echo 🔒 Iniciando servidor local...
start python -m http.server 8000 --bind 0.0.0.0

echo.
echo 🌐 Aguarde 3 segundos...
timeout /t 3 /nobreak

echo.
echo 🚀 Criando túnel HTTPS com ngrok...
echo.
echo ✅ Aguarde a URL HTTPS aparecer...
echo ✅ Use essa URL no celular para instalar o PWA!
echo.

ngrok http 8000

echo.
echo 🎉 PWA funcionará com HTTPS!
pause
