/* =====================================================
                PROFILE PAGE
===================================================== */

document.addEventListener("DOMContentLoaded", () => {

    animateCounters();

    animateProgressBar();

    revealOnScroll();

    addCardEffects();

});
/* =====================================================
                COUNTER ANIMATION
===================================================== */

function animateCounters(){

    const counters = document.querySelectorAll(".counter");

    counters.forEach(counter=>{

        const target = parseInt(
            counter.innerText.replace(/[^\d]/g,"")
        ) || 0;

        let current = 0;

        const increment = Math.max(1, Math.ceil(target/80));

        const isCurrency = counter.innerText.includes("₹");

        const timer = setInterval(()=>{

            current += increment;

            if(current >= target){

                current = target;

                clearInterval(timer);

            }

            counter.innerText = isCurrency
                ? "₹" + current
                : current;

        },20);

    });

}
/* =====================================================
                PROGRESS BAR
===================================================== */

function animateProgressBar(){

    const bar=document.querySelector(".progress-bar span");

    if(!bar) return;

    const width=bar.style.width;

    bar.style.width="0";

    setTimeout(()=>{

        bar.style.transition="width 1.5s ease";

        bar.style.width=width;

    },300);

}
/* =====================================================
                SCROLL REVEAL
===================================================== */

function revealOnScroll(){

    const cards=document.querySelectorAll(

        ".glass-card,.stat-card,.badge-card,.quick-card"

    );

    const observer=new IntersectionObserver(entries=>{

        entries.forEach(entry=>{

            if(entry.isIntersecting){

                entry.target.style.opacity="1";

                entry.target.style.transform="translateY(0)";

            }

        });

    },{

        threshold:0.15

    });

    cards.forEach(card=>{

        card.style.opacity="0";

        card.style.transform="translateY(40px)";

        card.style.transition="all .7s ease";

        observer.observe(card);

    });

}
/* =====================================================
                CARD HOVER EFFECT
===================================================== */

function addCardEffects(){

    const cards=document.querySelectorAll(

        ".glass-card,.stat-card,.badge-card"

    );

    cards.forEach(card=>{

        card.addEventListener("mousemove",e=>{

            const rect=card.getBoundingClientRect();

            const x=e.clientX-rect.left;

            const y=e.clientY-rect.top;

            card.style.background=

            `radial-gradient(circle at ${x}px ${y}px,

            rgba(255,122,0,.12),

            rgba(30,41,59,.75) 70%)`;

        });

        card.addEventListener("mouseleave",()=>{

            card.style.background="";

        });

    });

}
/* =====================================================
                PAGE FADE
===================================================== */

window.addEventListener("load",()=>{

    document.body.animate(

        [

            {

                opacity:0,

                transform:"translateY(20px)"

            },

            {

                opacity:1,

                transform:"translateY(0)"

            }

        ],

        {

            duration:700,

            easing:"ease"

        }

    );

});