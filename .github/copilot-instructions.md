# Instruções para Agentes AI - Padaria Pão de Mel PWA

## 🏗️ Arquitetura do Projeto

Este é um Progressive Web App (PWA) para uma padaria, com foco em:
- Interface web responsiva (`pão-de-mel.html`, `style.css`)
- Funcionalidades PWA (`sw.js`, `manifest.json`)
- Conversão para APK nativo (via PWABuilder, Bubblewrap ou Capacitor)

### Estrutura Principal
```
pão-de-mel.html    # Página principal
style.css          # Estilos
script.js          # Lógica do PWA e UI
sw.js             # Service Worker para cache
manifest.json      # Configuração do PWA
```

## 🔄 Fluxos de Desenvolvimento

### Teste Local
1. Iniciar servidor Python: `python -m http.server 8000`
2. Acessar `http://localhost:8000/pão-de-mel.html`

### Gerar APK
Opções disponíveis (em ordem de preferência):
1. PWABuilder (online) - Mais simples
2. Bubblewrap (CLI) - Mais controle
3. Capacitor (Framework) - Mais recursos

Scripts auxiliares:
- `build-apk.bat` / `build-apk.ps1` - Assistentes para geração de APK
- `deploy-https.bat` - Deploy com HTTPS local
- `start-https-local.bat` - Servidor HTTPS para teste

## 🔧 Padrões e Convenções

### Service Worker
- Cache primeiro, rede como fallback
- Nome do cache versionado: `pao-de-mel-v1.0.0`
- Página offline: fallback para `pão-de-mel.html`

### PWA
- Tema principal: `#890404` (vermelho padaria)
- Ícones em `favicon_io/`
- Recursos offline em `urlsToCache` no `sw.js`

### UI/UX
- Fontes: Dancing Script, Courgette, Lora
- Biblioteca de ícones: Bootstrap Icons
- Carrossel: Swiper.js
- Animações: animate.css

## 🔍 Pontos de Integração

### Links Externos
- WhatsApp: `wa.me/5527992314803`
- Instagram: `@padariapaodemel`
- Facebook: `paomelonline`

### APIs
- Notificações Push (configurado no Service Worker)
- Instalação PWA (via `beforeinstallprompt`)