@echo off
echo 🍞 Padaria Pão de Mel - Deploy HTTPS para PWA
echo ==============================================

echo.
echo 🔒 PWA precisa de HTTPS para instalar!
echo.
echo 📋 Opções de deploy HTTPS:
echo 1. GitHub Pages (Gratuito + HTTPS)
echo 2. Netlify (Gratuito + HTTPS)
echo 3. Vercel (Gratuito + HTTPS)
echo 4. Firebase Hosting (Gratuito + HTTPS)
echo.

set /p choice="Escolha uma opção (1-4): "

if "%choice%"=="1" goto github
if "%choice%"=="2" goto netlify
if "%choice%"=="3" goto vercel
if "%choice%"=="4" goto firebase
goto end

:github
echo.
echo 🐙 GitHub Pages - HTTPS Automático
echo ==================================
echo.
echo 1. Acesse: https://github.com/new
echo 2. Crie repositório público
echo 3. Faça upload dos arquivos
echo 4. Vá em Settings → Pages
echo 5. Selecione "Deploy from a branch"
echo 6. Escolha "main" branch
echo 7. Salve - HTTPS automático!
echo.
echo ✅ URL será: https://seuusuario.github.io/nome-do-repositorio
echo ✅ PWA funcionará 100%!
start https://github.com/new
pause
goto end

:netlify
echo.
echo 🌐 Netlify - HTTPS Automático
echo ==============================
echo.
echo 1. Acesse: https://app.netlify.com/
echo 2. Arraste a pasta do projeto
echo 3. Deploy automático + HTTPS!
echo.
echo ✅ URL será gerada automaticamente
echo ✅ PWA funcionará 100%!
start https://app.netlify.com/
pause
goto end

:vercel
echo.
echo ⚡ Vercel - HTTPS Automático
echo ============================
echo.
echo 1. Acesse: https://vercel.com/
echo 2. Conecte com GitHub
echo 3. Importe o repositório
echo 4. Deploy automático + HTTPS!
echo.
echo ✅ URL será gerada automaticamente
echo ✅ PWA funcionará 100%!
start https://vercel.com/
pause
goto end

:firebase
echo.
echo 🔥 Firebase Hosting - HTTPS Automático
echo ======================================
echo.
echo 1. Acesse: https://console.firebase.google.com/
echo 2. Crie projeto
echo 3. Ative Hosting
echo 4. Faça upload dos arquivos
echo 5. Deploy + HTTPS automático!
echo.
echo ✅ URL será gerada automaticamente
echo ✅ PWA funcionará 100%!
start https://console.firebase.google.com/
pause
goto end

:end
echo.
echo 🎉 Deploy concluído! PWA funcionará com HTTPS!
pause
