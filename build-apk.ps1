# 🍞 Padaria Pão de Mel - Gerador de APK
# ======================================

Write-Host "🍞 Padaria Pão de Mel - Gerador de APK" -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green
Write-Host ""

Write-Host "📋 Opções disponíveis:" -ForegroundColor Yellow
Write-Host "1. PWABuilder (Online - Mais fácil)" -ForegroundColor Cyan
Write-Host "2. Bubblewrap (Local - Mais controle)" -ForegroundColor Cyan
Write-Host "3. Deploy para GitHub Pages" -ForegroundColor Cyan
Write-Host "4. Capacitor (Framework completo)" -ForegroundColor Cyan
Write-Host ""

$choice = Read-Host "Escolha uma opção (1-4)"

switch ($choice) {
    "1" {
        Write-Host ""
        Write-Host "🚀 PWABuilder - Gerador Online" -ForegroundColor Green
        Write-Host "==============================" -ForegroundColor Green
        Write-Host ""
        Write-Host "1. Acesse: https://www.pwabuilder.com/" -ForegroundColor White
        Write-Host "2. Digite a URL do seu site" -ForegroundColor White
        Write-Host "3. Selecione Android" -ForegroundColor White
        Write-Host "4. Baixe o APK" -ForegroundColor White
        Write-Host ""
        Write-Host "✅ Mais fácil e rápido!" -ForegroundColor Green
        Start-Process "https://www.pwabuilder.com/"
    }
    "2" {
        Write-Host ""
        Write-Host "🛠️ Bubblewrap - Gerador Local" -ForegroundColor Green
        Write-Host "==============================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Instalando Bubblewrap..." -ForegroundColor Yellow
        npm install -g @bubblewrap/cli
        Write-Host ""
        Write-Host "Iniciando servidor local..." -ForegroundColor Yellow
        Start-Process "python" -ArgumentList "-m", "http.server", "8000" -WindowStyle Hidden
        Write-Host ""
        Write-Host "Aguarde 5 segundos..." -ForegroundColor Yellow
        Start-Sleep -Seconds 5
        Write-Host ""
        Write-Host "Gerando APK..." -ForegroundColor Yellow
        bubblewrap init --manifest=http://localhost:8000/manifest.json
        Write-Host ""
        Write-Host "✅ APK gerado com sucesso!" -ForegroundColor Green
    }
    "3" {
        Write-Host ""
        Write-Host "🌐 Deploy para GitHub Pages" -ForegroundColor Green
        Write-Host "===========================" -ForegroundColor Green
        Write-Host ""
        Write-Host "1. Crie repositório no GitHub" -ForegroundColor White
        Write-Host "2. Faça upload dos arquivos" -ForegroundColor White
        Write-Host "3. Ative GitHub Pages" -ForegroundColor White
        Write-Host "4. Use a URL no PWABuilder" -ForegroundColor White
        Write-Host ""
        Write-Host "✅ Site online para gerar APK!" -ForegroundColor Green
        Start-Process "https://github.com/new"
    }
    "4" {
        Write-Host ""
        Write-Host "⚡ Capacitor - Framework Completo" -ForegroundColor Green
        Write-Host "=================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Instalando Capacitor..." -ForegroundColor Yellow
        npm install -g @capacitor/cli
        Write-Host ""
        Write-Host "Inicializando projeto..." -ForegroundColor Yellow
        npx cap init "Padaria Pão de Mel" "com.paodemel.app"
        Write-Host ""
        Write-Host "Adicionando Android..." -ForegroundColor Yellow
        npx cap add android
        Write-Host ""
        Write-Host "Sincronizando..." -ForegroundColor Yellow
        npx cap sync
        Write-Host ""
        Write-Host "Abrindo Android Studio..." -ForegroundColor Yellow
        npx cap open android
        Write-Host ""
        Write-Host "✅ Projeto Capacitor criado!" -ForegroundColor Green
    }
    default {
        Write-Host "❌ Opção inválida!" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "🎉 Processo concluído!" -ForegroundColor Green
Read-Host "Pressione Enter para sair"
