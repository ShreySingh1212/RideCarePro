window.addEventListener("scroll", function () {

    const navbar = document.querySelector(".custom-navbar");

    if (window.scrollY > 60) {

        navbar.classList.add("scrolled");

    } else {

        navbar.classList.remove("scrolled");

    }

});

/*====================================================
            PREMIUM COUNTER ANIMATION
====================================================*/

const counters = document.querySelectorAll(".counter");

function animateCounter(counter) {

    const target = +counter.dataset.target;

    const duration = 2000;

    const start = 0;

    const startTime = performance.now();

    function update(currentTime) {

        const progress = Math.min((currentTime - startTime) / duration, 1);

        // Ease Out Cubic
        const ease = 1 - Math.pow(1 - progress, 3);

        const value = Math.floor(start + (target - start) * ease);

        if (target >= 1000) {

            counter.innerHTML = Math.floor(value / 1000) + "K+";

        } else {

            counter.innerHTML = value + "+";

        }

        if (progress < 1) {

            requestAnimationFrame(update);

        }

    }

    requestAnimationFrame(update);

}

/*====================================================
            GLOBAL SCROLL REVEAL
====================================================*/

const reveals = document.querySelectorAll(".reveal");

const revealObserver = new IntersectionObserver((entries) => {

    entries.forEach(entry => {

        if (!entry.isIntersecting) return;

        entry.target.classList.add("active");

        const counter = entry.target.querySelector(".counter");

        if (counter) {

            animateCounter(counter);

        }

        revealObserver.unobserve(entry.target);

    });

}, {

    threshold:0.25

});

reveals.forEach((item,index)=>{

    item.style.transitionDelay=(index*120)+"ms";

    revealObserver.observe(item);

});

/*=========================================
        Gallery Lightbox
==========================================*/

/*=========================================
        Gallery Lightbox
==========================================*/

const galleryItems = document.querySelectorAll(".gallery-item");
const lightbox = document.querySelector(".gallery-lightbox");
const lightboxImg = document.getElementById("lightbox-img");
const closeBtn = document.querySelector(".close-lightbox");

galleryItems.forEach(item => {

    item.addEventListener("click", function () {

        lightboxImg.src = this.dataset.image;

        lightbox.classList.add("show");

        document.body.style.overflow = "hidden";

    });

});

function closeLightbox(){

    lightbox.classList.remove("show");

    document.body.style.overflow = "";

}

closeBtn.addEventListener("click", closeLightbox);

lightbox.addEventListener("click", function(e){

    if(e.target === this){

        closeLightbox();

    }

});

document.addEventListener("keydown", function(e){

    if(e.key === "Escape"){

        closeLightbox();

    }

});

/*====================================================
            TESTIMONIAL CAROUSEL
====================================================*/

document.addEventListener("DOMContentLoaded", () => {

const track = document.querySelector(".testimonial-track");
const cards = document.querySelectorAll(".testimonial-card");
const prev = document.querySelector(".prev");
const next = document.querySelector(".next");
const dots = document.querySelectorAll(".dot");

if(!track) return;

let current = 0;
let autoSlide;

/*=====================================*/

function updateSlider(){

cards.forEach((card,index)=>{

card.classList.remove("active");

if(index===current){

card.classList.add("active");

}

});

dots.forEach(dot=>dot.classList.remove("active"));

dots[current].classList.add("active");

const gap = 45;

const cardWidth = cards[0].offsetWidth + gap;

const containerWidth =
document.querySelector(".testimonial-slider").offsetWidth;

const offset =
(current * cardWidth) -
((containerWidth-cardWidth)/2);

track.style.transform =
`translateX(${-offset}px)`;

}

/*=====================================*/

function nextSlide(){

current++;

if(current>=cards.length){

current=0;

}

updateSlider();

}

/*=====================================*/

function prevSlide(){

current--;

if(current<0){

current=cards.length-1;

}

updateSlider();

}

/*=====================================*/

next.addEventListener("click",()=>{

nextSlide();

restartAuto();

});

prev.addEventListener("click",()=>{

prevSlide();

restartAuto();

});

/*=====================================*/

dots.forEach((dot,index)=>{

dot.addEventListener("click",()=>{

current=index;

updateSlider();

restartAuto();

});

});

/*=====================================*/

function startAuto(){

autoSlide=setInterval(()=>{

nextSlide();

},5000);

}

function stopAuto(){

clearInterval(autoSlide);

}

function restartAuto(){

stopAuto();

startAuto();

}

/*=====================================*/

const slider=document.querySelector(".testimonial-slider");

slider.addEventListener("mouseenter",stopAuto);

slider.addEventListener("mouseleave",startAuto);

/*=====================================*/

updateSlider();

startAuto();

});
/*====================================================
        TESTIMONIAL ADVANCED FEATURES
====================================================*/

// Keyboard Navigation

document.addEventListener("keydown",(e)=>{

    if(e.key==="ArrowRight"){

        document.querySelector(".next").click();

    }

    if(e.key==="ArrowLeft"){

        document.querySelector(".prev").click();

    }

});

/*====================================================
                MOBILE SWIPE
====================================================*/

const slider=document.querySelector(".testimonial-slider");

let startX=0;
let endX=0;

slider.addEventListener("touchstart",(e)=>{

    startX=e.changedTouches[0].clientX;

});

slider.addEventListener("touchend",(e)=>{

    endX=e.changedTouches[0].clientX;

    handleSwipe();

});

function handleSwipe(){

    const distance=startX-endX;

    if(distance>50){

        document.querySelector(".next").click();

    }

    if(distance<-50){

        document.querySelector(".prev").click();

    }

}

/*====================================================
                3D CARD TILT
====================================================*/

const cards=document.querySelectorAll(".testimonial-card");

cards.forEach(card=>{

    card.addEventListener("mousemove",(e)=>{

        const rect=card.getBoundingClientRect();

        const x=e.clientX-rect.left;

        const y=e.clientY-rect.top;

        const rotateY=((x/rect.width)-0.5)*16;

        const rotateX=((y/rect.height)-0.5)*-16;

        card.style.transform=
        `perspective(900px)
         rotateX(${rotateX}deg)
         rotateY(${rotateY}deg)
         translateY(-10px)`;

    });

    card.addEventListener("mouseleave",()=>{

        if(card.classList.contains("active")){

            card.style.transform="translateY(-12px) scale(1.06)";

        }else{

            card.style.transform="translateY(0px)";

        }

    });

});

/*====================================================
                SPOTLIGHT EFFECT
====================================================*/

cards.forEach(card=>{

    card.addEventListener("mousemove",(e)=>{

        const rect=card.getBoundingClientRect();

        const x=e.clientX-rect.left;

        const y=e.clientY-rect.top;

        card.style.background=

        `radial-gradient(circle at ${x}px ${y}px,

        rgba(255,107,0,.18),

        rgba(255,255,255,.05) 45%,

        rgba(255,255,255,.03) 100%)`;

    });

    card.addEventListener("mouseleave",()=>{

        card.style.background=

        "rgba(255,255,255,.05)";

    });

});

/*====================================================
            WINDOW RESIZE FIX
====================================================*/

window.addEventListener("resize",()=>{

    document.querySelector(".dot.active")?.click();

});

/*====================================================
            BUTTON RIPPLE EFFECT
====================================================*/

document.querySelectorAll(".testimonial-btn").forEach(btn=>{

    btn.addEventListener("click",function(){

        this.animate(

        [

            {transform:"translateY(-50%) scale(1)"},

            {transform:"translateY(-50%) scale(.85)"},

            {transform:"translateY(-50%) scale(1.1)"},

            {transform:"translateY(-50%) scale(1)"}

        ],

        {

            duration:350,

            easing:"ease"

        });

    });

});

/*====================================================
            DOT SCALE EFFECT
====================================================*/

document.querySelectorAll(".dot").forEach(dot=>{

    dot.addEventListener("click",()=>{

        dot.animate(

        [

            {transform:"scale(1)"},

            {transform:"scale(1.5)"},

            {transform:"scale(1)"}

        ],

        {

            duration:350

        });

    });

});

/*====================================================
                CARD ENTRANCE
====================================================*/

const observer=new IntersectionObserver(entries=>{

    entries.forEach(entry=>{

        if(entry.isIntersecting){

            entry.target.classList.add("show");

        }

    });

},

{

    threshold:.25

});

cards.forEach(card=>observer.observe(card));

document.querySelectorAll('a[href^="#"]').forEach(anchor => {

    anchor.addEventListener("click", function(e) {

        e.preventDefault();

        const target = document.querySelector(this.getAttribute("href"));

        if(target){

            target.scrollIntoView({

                behavior: "smooth",

                block: "start"

            });

        }

    });

});

/*====================================================
                END
====================================================*/