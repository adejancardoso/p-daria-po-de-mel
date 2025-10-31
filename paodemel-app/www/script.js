document.addEventListener('DOMContentLoaded', function() {
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
