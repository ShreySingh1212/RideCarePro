/*=========================================
        RIDECAREPRO DASHBOARD
=========================================*/

document.addEventListener("DOMContentLoaded", function () {

    animateCounters();

    updateGreeting();

    startClock();

    animateProgressBars();

    notificationBell();

    initializeBackToTop();

});
/*=========================================
        COUNTER ANIMATION
=========================================*/

function animateCounters(){

    const counters=document.querySelectorAll(".counter");

    counters.forEach(counter=>{

        const target=parseInt(counter.innerText)||0;

        let count=0;

        const speed=Math.max(15,120/Math.max(target,1));

        const timer=setInterval(()=>{

            count++;

            counter.innerText=count;

            if(count>=target){

                counter.innerText=target;

                clearInterval(timer);

            }

        },speed);

    });

}
/*=========================================
        GREETING
=========================================*/

function updateGreeting(){

    const greeting=document.getElementById("greeting");

    if(!greeting) return;

    const hour=new Date().getHours();

    let text="Welcome";

    if(hour<12){

        text="Good Morning";

    }else if(hour<17){

        text="Good Afternoon";

    }else{

        text="Good Evening";

    }

    greeting.innerText=text;

}
/*=========================================
        PROGRESS BARS
=========================================*/

function animateProgressBars(){

    document.querySelectorAll(".progress span")

    .forEach(bar=>{

        const width=bar.style.width;

        bar.style.width="0";

        setTimeout(()=>{

            bar.style.width=width;

        },300);

    });

}
/*=========================================
        BELL ANIMATION
=========================================*/

function notificationBell(){

    const bell=document.querySelector(".notification");

    if(!bell) return;

    setInterval(()=>{

        bell.classList.add("shake");

        setTimeout(()=>{

            bell.classList.remove("shake");

        },700);

    },10000);

}
/*=========================================
        BACK TO TOP
=========================================*/

function initializeBackToTop(){

    const btn=document.querySelector(".back-top");

    if(!btn) return;

    btn.addEventListener("click",()=>{

        window.scrollTo({

            top:0,

            behavior:"smooth"

        });

    });

}
/*=========================================
        SIDEBAR TOGGLE
=========================================*/

const menuButton=document.querySelector(".menu-toggle");

const sidebar=document.querySelector(".sidebar");

if(menuButton){

menuButton.onclick=function(){

sidebar.classList.toggle("active");

};

}