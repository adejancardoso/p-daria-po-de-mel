document.addEventListener('DOMContentLoaded', function() {
    // Service Worker Registration
    if ('serviceWorker' in navigator) {
        window.addEventListener('load', () => {
            navigator.serviceWorker.register('/sw.js')
                .then((registration) => {
                    console.log('SW registrado com sucesso:', registration);
                })
                .catch((registrationError) => {
                    console.log('Falha no registro do SW:', registrationError);
                });
        });
    }

    // Botão de instalação do app
    const installBtn = document.getElementById('install-app-btn');
    
    installBtn.addEventListener('click', () => {
        showInstallInstructions();
    });

    // Função para mostrar instruções de instalação
    function showInstallInstructions() {
        const isAndroid = /Android/i.test(navigator.userAgent);
        const isIOS = /iPad|iPhone|iPod/.test(navigator.userAgent);
        
        let instructions = '';
        
        if (isAndroid) {
            instructions = `
                <div style="background: white; padding: 20px; border-radius: 10px; margin: 20px; box-shadow: 0 4px 15px rgba(0,0,0,0.2);">
                    <h3 style="color: #890404; margin-bottom: 15px;">📱 Instalar App no Android</h3>
                    <ol style="text-align: left; color: #333; line-height: 1.6;">
                        <li><strong>Toque no menu do Chrome</strong> (3 pontos no canto superior direito)</li>
                        <li><strong>Selecione "Adicionar à tela inicial"</strong></li>
                        <li><strong>Confirme a instalação</strong> (toque em "Adicionar")</li>
                        <li><strong>Pronto!</strong> O app aparecerá na tela inicial!</li>
                    </ol>
                    <div style="background: #d4edda; border: 1px solid #c3e6cb; padding: 10px; border-radius: 5px; margin-top: 15px;">
                        <p style="color: #155724; margin: 0; font-size: 12px;">
                            ✅ <strong>Funciona offline</strong> após primeiro acesso<br>
                            ✅ <strong>Ícone personalizado</strong> da padaria<br>
                            ✅ <strong>Experiência nativa</strong> como app
                        </p>
                    </div>
                    <button onclick="this.parentElement.remove()" style="background: #890404; color: white; border: none; padding: 10px 20px; border-radius: 5px; margin-top: 15px; cursor: pointer;">Fechar</button>
                </div>
            `;
        } else if (isIOS) {
            instructions = `
                <div style="background: white; padding: 20px; border-radius: 10px; margin: 20px; box-shadow: 0 4px 15px rgba(0,0,0,0.2);">
                    <h3 style="color: #890404; margin-bottom: 15px;">📱 Instalar App no iPhone/iPad</h3>
                    <ol style="text-align: left; color: #333; line-height: 1.6;">
                        <li><strong>Toque no botão "Compartilhar"</strong> (seta para cima na parte inferior)</li>
                        <li><strong>Selecione "Adicionar à Tela Inicial"</strong></li>
                        <li><strong>Confirme a instalação</strong> (toque em "Adicionar")</li>
                        <li><strong>Pronto!</strong> O app aparecerá na tela inicial!</li>
                    </ol>
                    <div style="background: #d4edda; border: 1px solid #c3e6cb; padding: 10px; border-radius: 5px; margin-top: 15px;">
                        <p style="color: #155724; margin: 0; font-size: 12px;">
                            ✅ <strong>Funciona offline</strong> após primeiro acesso<br>
                            ✅ <strong>Ícone personalizado</strong> da padaria<br>
                            ✅ <strong>Experiência nativa</strong> como app
                        </p>
                    </div>
                    <button onclick="this.parentElement.remove()" style="background: #890404; color: white; border: none; padding: 10px 20px; border-radius: 5px; margin-top: 15px; cursor: pointer;">Fechar</button>
                </div>
            `;
        } else {
            instructions = `
                <div style="background: white; padding: 20px; border-radius: 10px; margin: 20px; box-shadow: 0 4px 15px rgba(0,0,0,0.2);">
                    <h3 style="color: #890404; margin-bottom: 15px;">💻 Instalar App no Desktop</h3>
                    <ol style="text-align: left; color: #333;">
                        <li>Procure o ícone de instalação na barra de endereços</li>
                        <li>Ou use Ctrl+Shift+I → Application → Manifest</li>
                        <li>Clique em "Install" se disponível</li>
                    </ol>
                    <button onclick="this.parentElement.remove()" style="background: #890404; color: white; border: none; padding: 10px 20px; border-radius: 5px; margin-top: 10px;">Fechar</button>
                </div>
            `;
        }
        
        document.body.insertAdjacentHTML('beforeend', instructions);
    }

    /*
    // Swiper initialization
    const swiper = new Swiper('.swiper', {
        loop: true,
        slidesPerView: 3,
        spaceBetween: 10,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        autoplay: {
            delay: 5000,
        },
        breakpoints: {
            320: { slidesPerView: 1, spaceBetween: 20 },
            640: { slidesPerView: 2, spaceBetween: 30 },
            1024: { slidesPerView: 3, spaceBetween: 10 }
        }
    });
    */

    // Back to top button
    const backToTopBtn = document.getElementById("back-to-top-btn");
    window.addEventListener("scroll", scrollFunction);
    function scrollFunction() {
        if (window.scrollY > 20) {
            backToTopBtn.classList.add("show");
        } else {
            backToTopBtn.classList.remove("show");
        }
    }
    backToTopBtn.addEventListener("click", function() {
        window.scrollTo({top: 0, behavior: 'smooth'});
    });

    // Mobile menu toggle
    const menuToggle = document.querySelector('.menu-toggle');
    const nav = document.querySelector('nav');
    if (menuToggle && nav) {
        menuToggle.addEventListener('click', () => {
            nav.classList.toggle('active');
        });
    }

    // Scroll Reveal Animation
    const animatedItems = document.querySelectorAll('.fotos, .intro, .detalhes, .colaboradoles, .História');

    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                observer.unobserve(entry.target); // Stop observing once it's visible
            }
        });
    }, {
        threshold: 0.1 // Trigger when 10% of the item is visible
    });

    animatedItems.forEach(item => {
        item.classList.add('animated-item');
        observer.observe(item);
    });
});
