document.addEventListener("DOMContentLoaded",()=>{

    revealCards();

    buttonRipple();

});

function revealCards(){

    const cards=document.querySelectorAll(".info-card");

    const observer=new IntersectionObserver(entries=>{

        entries.forEach(entry=>{

            if(entry.isIntersecting){

                entry.target.style.opacity="1";

                entry.target.style.transform="translateY(0)";

            }

        });

    });

    cards.forEach(card=>{

        card.style.opacity="0";

        card.style.transform="translateY(35px)";

        card.style.transition=".6s";

        observer.observe(card);

    });

}

function buttonRipple(){

    document.querySelectorAll(".back-btn").forEach(btn=>{

        btn.addEventListener("click",function(e){

            const ripple=document.createElement("span");

            ripple.style.position="absolute";

            ripple.style.width="15px";

            ripple.style.height="15px";

            ripple.style.borderRadius="50%";

            ripple.style.background="rgba(255,255,255,.5)";

            ripple.style.left=e.offsetX+"px";

            ripple.style.top=e.offsetY+"px";

            ripple.style.transform="translate(-50%,-50%)";

            ripple.style.animation="ripple .6s linear";

            this.appendChild(ripple);

            setTimeout(()=>{

                ripple.remove();

            },600);

        });

    });

}