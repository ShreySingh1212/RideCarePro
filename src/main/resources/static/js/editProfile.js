/* =====================================================
                EDIT PROFILE PAGE
===================================================== */

document.addEventListener("DOMContentLoaded", () => {

    pageAnimation();

    enableUnsavedChangesWarning();

    addInputEffects();

    handleFormSubmission();

});
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
/* =====================================================
            UNSAVED CHANGES
===================================================== */

function enableUnsavedChangesWarning(){

    const form=document.querySelector("form");

    if(!form) return;

    let changed=false;

    form.querySelectorAll("input, textarea").forEach(field=>{

        field.addEventListener("input",()=>{

            changed=true;

        });

    });

    window.addEventListener("beforeunload",function(e){

        if(changed){

            e.preventDefault();

            e.returnValue="";

        }

    });

    form.addEventListener("submit",()=>{

        changed=false;

    });

}
/* =====================================================
                INPUT EFFECTS
===================================================== */

function addInputEffects(){

    const fields=document.querySelectorAll(

        "input, textarea"

    );

    fields.forEach(field=>{

        field.addEventListener("focus",()=>{

            field.parentElement.style.transform="translateY(-3px)";

        });

        field.addEventListener("blur",()=>{

            field.parentElement.style.transform="translateY(0)";

        });

    });

}
/* =====================================================
                SAVE BUTTON
===================================================== */

function handleFormSubmission(){

    const form=document.querySelector("form");

    const button=document.querySelector(".save-btn");

    if(!form || !button) return;

    form.addEventListener("submit",()=>{

        button.disabled=true;

        button.innerHTML=`

            <i class="fa-solid fa-spinner fa-spin"></i>

            Saving...

        `;

    });

}