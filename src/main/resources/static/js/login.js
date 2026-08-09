/*==================================================
                RIDECARE PRO LOGIN
                PREMIUM VERSION 2.0
===================================================*/

document.addEventListener("DOMContentLoaded", () => {

    /*==========================================
            PASSWORD SHOW / HIDE
    ==========================================*/

    const passwordField = document.getElementById("password");
    const togglePassword = document.getElementById("togglePassword");

    if (passwordField && togglePassword) {

        togglePassword.addEventListener("click", () => {

            const isPassword = passwordField.type === "password";

            passwordField.type = isPassword ? "text" : "password";

            togglePassword.innerHTML = isPassword
                    ? '<i class="fa-solid fa-eye-slash"></i>'
                    : '<i class="fa-solid fa-eye"></i>';

        });

    }


    /*==========================================
            INPUT FOCUS EFFECT
    ==========================================*/

    document.querySelectorAll(".form-control").forEach(input => {

        input.addEventListener("focus", () => {

            input.parentElement.style.transform = "translateY(-2px)";

        });

        input.addEventListener("blur", () => {

            input.parentElement.style.transform = "translateY(0px)";

        });

    });


    /*==========================================
            BUTTON LOADING EFFECT
    ==========================================*/

    const form = document.getElementById("loginForm");
    const button = document.querySelector(".btn-login");

    if (form && button) {

        form.addEventListener("submit", () => {

            button.disabled = true;

            button.innerHTML = `
                <span class="spinner-border spinner-border-sm me-2"></span>
                Logging In...
            `;

        });

    }


    /*==========================================
            LOGIN CARD ENTRY
    ==========================================*/

    const loginCard = document.querySelector(".login-card");

    if (loginCard) {

        loginCard.animate(

            [

                {
                    opacity: 0,
                    transform: "translateY(40px)"
                },

                {
                    opacity: 1,
                    transform: "translateY(0px)"
                }

            ],

            {

                duration: 900,

                easing: "ease-out"

            }

        );

    }


    /*==========================================
            FEATURE CARD HOVER
    ==========================================*/

    document.querySelectorAll(".feature").forEach(card => {

        card.addEventListener("mouseenter", () => {

            card.style.boxShadow =
                    "0 18px 40px rgba(255,107,0,.25)";

        });

        card.addEventListener("mouseleave", () => {

            card.style.boxShadow = "none";

        });

    });


    /*==========================================
            BUTTON RIPPLE EFFECT
    ==========================================*/

    document.querySelectorAll(".btn-login").forEach(button => {

        button.addEventListener("click", function (e) {

            const ripple = document.createElement("span");

            ripple.classList.add("ripple");

            this.appendChild(ripple);

            const rect = this.getBoundingClientRect();

            ripple.style.left = (e.clientX - rect.left) + "px";
            ripple.style.top = (e.clientY - rect.top) + "px";

            setTimeout(() => {

                ripple.remove();

            }, 600);

        });

    });


});