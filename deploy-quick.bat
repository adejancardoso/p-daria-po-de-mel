@echo off
echo 🍞 Padaria Pão de Mel - Deploy Rápido
echo ======================================

echo.
echo 📋 Opções de deploy:
echo 1. GitHub Pages (Gratuito)
echo 2. Netlify (Gratuito)
echo 3. Vercel (Gratuito)
echo.

set /p choice="Escolha uma opção (1-3): "

if "%choice%"=="1" goto github
if "%choice%"=="2" goto netlify
if "%choice%"=="3" goto vercel
goto end

:github
echo.
echo 🐙 GitHub Pages - Deploy Gratuito
echo ==================================
echo.
echo 1. Acesse: https://github.com/new
echo 2. Crie repositório público
echo 3. Faça upload dos arquivos
echo 4. Vá em Settings → Pages
echo 5. Selecione "Deploy from a branch"
echo 6. Escolha "main" branch
echo 7. Salve - seu site estará online!
echo.
echo ✅ URL será: https://seuusuario.github.io/nome-do-repositorio
start https://github.com/new
pause
goto end

:netlify
echo.
echo 🌐 Netlify - Deploy Automático
echo ===============================
echo.
echo 1. Acesse: https://app.netlify.com/
echo 2. Arraste a pasta do projeto
echo 3. Deploy automático!
echo.
echo ✅ URL será gerada automaticamente
start https://app.netlify.com/
pause
goto end

:vercel
echo.
echo ⚡ Vercel - Performance Otimizada
echo ==================================
echo.
echo 1. Acesse: https://vercel.com/
echo 2. Conecte com GitHub
echo 3. Importe o repositório
echo 4. Deploy automático!
echo.
echo ✅ URL será gerada automaticamente
start https://vercel.com/
pause
goto end

:end
echo.
echo 🎉 Deploy concluído!
pause
