document.addEventListener("DOMContentLoaded", function () {

    const form = document.getElementById("loginForm");
    const role = document.getElementById("role");

    const contextPath = form.dataset.contextPath || "";

    role.addEventListener("change", function () {

        switch (this.value) {

            case "CUSTOMER":
                form.action = contextPath + "/customer/login";
                break;

            case "EMPLOYEE":
                form.action = contextPath + "/employee/login";
                break;

            case "ADMIN":
                form.action = contextPath + "/admin/login";
                break;

            default:
                form.action = contextPath + "/customer/login";
        }

    });

});