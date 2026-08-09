/* =====================================================
                CHANGE PASSWORD PAGE
===================================================== */

document.addEventListener("DOMContentLoaded", () => {

    initializePasswordToggle();

    initializePasswordStrength();

    initializePasswordMatch();

    initializeFormSubmission();

    pageAnimation();

});
/* =====================================================
                PASSWORD TOGGLE
===================================================== */

function initializePasswordToggle(){

    const buttons=document.querySelectorAll(".toggle-password");

    buttons.forEach(button=>{

        button.addEventListener("click",()=>{

            const input=button.previousElementSibling;
            const icon=button.querySelector("i");

            if(input.type==="password"){

                input.type="text";

                icon.classList.remove("fa-eye");

                icon.classList.add("fa-eye-slash");

            }else{

                input.type="password";

                icon.classList.remove("fa-eye-slash");

                icon.classList.add("fa-eye");

            }

        });

    });

}
/* =====================================================
            PASSWORD STRENGTH
===================================================== */

function initializePasswordStrength(){

    const password=document.getElementById("newPassword");

    const bar=document.querySelector(".strength-fill");

    const text=document.getElementById("strengthText");

    if(!password) return;

    password.addEventListener("input",()=>{

        const value=password.value;

        let score=0;

        if(value.length>=8) score++;

        if(/[A-Z]/.test(value)) score++;

        if(/[a-z]/.test(value)) score++;

        if(/[0-9]/.test(value)) score++;

        if(/[^A-Za-z0-9]/.test(value)) score++;

        switch(score){

            case 0:
            case 1:
                bar.style.width="20%";
                bar.style.background="#ef4444";
                text.innerText="Weak Password";
                break;

            case 2:
            case 3:
                bar.style.width="60%";
                bar.style.background="#f59e0b";
                text.innerText="Medium Password";
                break;

            case 4:
            case 5:
                bar.style.width="100%";
                bar.style.background="#22c55e";
                text.innerText="Strong Password";
                break;
        }

    });

}
/* =====================================================
            PASSWORD MATCH
===================================================== */

function initializePasswordMatch(){

    const newPassword=document.getElementById("newPassword");

    const confirm=document.getElementById("confirmPassword");

    const message=document.getElementById("matchMessage");

    if(!newPassword || !confirm) return;

    function validate(){

        if(confirm.value===""){

            message.innerText="";

            return;

        }

        if(newPassword.value===confirm.value){

            message.style.color="#22c55e";

            message.innerHTML='<i class="fa-solid fa-circle-check"></i> Passwords match';

        }else{

            message.style.color="#ef4444";

            message.innerHTML='<i class="fa-solid fa-circle-xmark"></i> Passwords do not match';

        }

    }

    newPassword.addEventListener("input",validate);

    confirm.addEventListener("input",validate);

}
/* =====================================================
                FORM SUBMIT
===================================================== */

function initializeFormSubmission(){

    const form=document.querySelector("form");

    const button=document.querySelector(".save-btn");

    const newPassword=document.getElementById("newPassword");

    const confirm=document.getElementById("confirmPassword");

    if(!form || !button) return;

    form.addEventListener("submit",(event)=>{

        if(newPassword.value!==confirm.value){

            event.preventDefault();

            alert("Passwords do not match.");

            return;

        }

        button.disabled=true;

        button.innerHTML=`
            <i class="fa-solid fa-spinner fa-spin"></i>
            Updating...
        `;

    });

}
/* =====================================================
                PAGE ANIMATION
===================================================== */

function pageAnimation(){

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

            easing:"ease-out"

        }

    );

}