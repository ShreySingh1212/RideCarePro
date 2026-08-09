/*=========================================
        PAGE LOADER ANIMATION
==========================================*/

document.addEventListener("DOMContentLoaded",()=>{

document.body.classList.add("loaded");

});


/*=========================================
        COUNTER ANIMATION
==========================================*/

const counters=document.querySelectorAll(
".hero-stats h2,.analytics-card h3,.overview-card h1,.info-card h3"
);

const speed=150;

counters.forEach(counter=>{

const animate=()=>{

const value=+counter.innerText.replace(/\D/g,'');

const data=+counter.getAttribute("data-count")||value;

const time=data/speed;

if(value<data){

counter.innerText=Math.ceil(value+time);

requestAnimationFrame(animate);

}else{

counter.innerText=data;

}

};

counter.setAttribute("data-count",counter.innerText.replace(/\D/g,''));

counter.innerText=0;

animate();

});


/*=========================================
        BOOKING SEARCH
==========================================*/

const search=document.getElementById("bookingSearch");

if(search){

search.addEventListener("keyup",function(){

let value=this.value.toLowerCase();

let rows=document.querySelectorAll("#bookingTable tbody tr");

rows.forEach(row=>{

row.style.display=row.innerText.toLowerCase().includes(value)
?"":"none";

});

});

}


/*=========================================
        CARD ANIMATION
==========================================*/

const cards=document.querySelectorAll(

".analytics-card,.overview-card,.summary-card,.quick-card"

);

const observer=new IntersectionObserver(entries=>{

entries.forEach(entry=>{

if(entry.isIntersecting){

entry.target.classList.add("show-card");

}

});

});

cards.forEach(card=>{

observer.observe(card);

});


/*=========================================
        HERO ANIMATION
==========================================*/

const hero=document.querySelector(".hero");

if(hero){

hero.classList.add("show-hero");

}


/*=========================================
        ACTIVE SIDEBAR
==========================================*/

const links=document.querySelectorAll(".sidebar ul li");

links.forEach(link=>{

link.addEventListener("click",()=>{

links.forEach(item=>item.classList.remove("active"));

link.classList.add("active");

});

});

function updateClock(){
    const clock=document.getElementById('clock');
    if(!clock) return;

    const now=new Date();
    clock.textContent=now.toLocaleTimeString();
}

setInterval(updateClock,1000);
updateClock();