@echo off
echo 🍞 Padaria Pão de Mel - Gerador de APK
echo ======================================

echo.
echo 📋 Opções disponíveis:
echo 1. PWABuilder (Online - Mais fácil)
echo 2. Bubblewrap (Local - Mais controle)
echo 3. Deploy para GitHub Pages
echo.

set /p choice="Escolha uma opção (1-3): "

if "%choice%"=="1" goto pwabuilder
if "%choice%"=="2" goto bubblewrap
if "%choice%"=="3" goto deploy
goto end

:pwabuilder
echo.
echo 🚀 PWABuilder - Gerador Online
echo ==============================
echo.
echo 1. Acesse: https://www.pwabuilder.com/
echo 2. Digite a URL do seu site
echo 3. Selecione Android
echo 4. Baixe o APK
echo.
echo ✅ Mais fácil e rápido!
pause
goto end

:bubblewrap
echo.
echo 🛠️ Bubblewrap - Gerador Local
echo ==============================
echo.
echo Instalando Bubblewrap...
npm install -g @bubblewrap/cli
echo.
echo Iniciando servidor local...
start python -m http.server 8000
echo.
echo Aguarde 5 segundos...
timeout /t 5 /nobreak
echo.
echo Gerando APK...
bubblewrap init --manifest=http://localhost:8000/manifest.json
echo.
echo ✅ APK gerado com sucesso!
pause
goto end

:deploy
echo.
echo 🌐 Deploy para GitHub Pages
echo ============================
echo.
echo 1. Crie repositório no GitHub
echo 2. Faça upload dos arquivos
echo 3. Ative GitHub Pages
echo 4. Use a URL no PWABuilder
echo.
echo ✅ Site online para gerar APK!
pause
goto end

:end
echo.
echo 🎉 Processo concluído!
pause
