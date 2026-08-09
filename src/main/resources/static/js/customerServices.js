/*=========================================
        COUNTER ANIMATION
=========================================*/

const counters = document.querySelectorAll(".counter");

const startCounter = (counter) => {

    const target = +counter.dataset.target;

    let count = 0;

    const increment = target / 100;

    const update = () => {

        if (count < target) {

            count += increment;

            counter.innerText = Math.ceil(count);

            requestAnimationFrame(update);

        } else {

            counter.innerText = target;

        }

    };

    update();

};

const observer = new IntersectionObserver((entries) => {

    entries.forEach(entry => {

        if (entry.isIntersecting) {

            startCounter(entry.target);

            observer.unobserve(entry.target);

        }

    });

}, {

    threshold: 0.5

});

counters.forEach(counter => observer.observe(counter));



/*=========================================
        LIVE SEARCH
=========================================*/

const searchInput = document.getElementById("serviceSearch");

const serviceCards = document.querySelectorAll(".service-card");

searchInput.addEventListener("keyup", function () {

    const value = this.value.toLowerCase();

    serviceCards.forEach(card => {

        const text = card.innerText.toLowerCase();

        if (text.includes(value)) {

            card.style.display = "block";

        } else {

            card.style.display = "none";

        }

    });

});
/*=========================================
        CATEGORY FILTER
=========================================*/

const buttons = document.querySelectorAll(".category-btn");

buttons.forEach(button => {

    button.addEventListener("click", () => {

        buttons.forEach(btn => btn.classList.remove("active"));

        button.classList.add("active");

        const filter = button.dataset.filter;

        serviceCards.forEach(card => {

            if (filter === "all") {

                card.style.display = "block";

            }

            else if (card.dataset.category === filter) {

                card.style.display = "block";

            }

            else {

                card.style.display = "none";

            }

        });

    });

});



/*=========================================
        SMOOTH SCROLL
=========================================*/

document.querySelectorAll('a[href^="#"]').forEach(anchor => {

    anchor.addEventListener("click", function(e){

        e.preventDefault();

        const target = document.querySelector(this.getAttribute("href"));

        if(target){

            target.scrollIntoView({

                behavior:"smooth"

            });

        }

    });

});
/*=========================================
        SCROLL REVEAL
=========================================*/

const revealElements = document.querySelectorAll(

".service-card,.why-card,.process-card,.mechanic-card,.review-card,.faq-item,.stat-card"

);

const revealObserver = new IntersectionObserver((entries)=>{

    entries.forEach(entry=>{

        if(entry.isIntersecting){

            entry.target.style.opacity="1";

            entry.target.style.transform="translateY(0)";

        }

    });

},{

    threshold:0.15

});

revealElements.forEach(el=>{

    el.style.opacity="0";

    el.style.transform="translateY(60px)";

    el.style.transition="all .8s ease";

    revealObserver.observe(el);

});



/*=========================================
        BUTTON RIPPLE
=========================================*/

document.querySelectorAll(".book-btn,.cta-btn,.btn-orange,.btn-dark").forEach(button=>{

    button.addEventListener("mouseenter",()=>{

        button.style.boxShadow="0 15px 35px rgba(255,138,42,.35)";

    });

    button.addEventListener("mouseleave",()=>{

        button.style.boxShadow="none";

    });

});