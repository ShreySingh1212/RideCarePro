document.addEventListener("DOMContentLoaded", function () {

    const search = document.getElementById("bookingSearch");
    const filter = document.getElementById("statusFilter");

    function applyFilter() {

        const keyword = search.value.toLowerCase();
        const status = filter.value;

        document.querySelectorAll(".booking-item").forEach(card => {

            const top = card.querySelector(".booking-top");

            const text = top.dataset.search.toLowerCase();
            const bookingStatus = top.dataset.status;

            const matchesSearch = text.includes(keyword);
            const matchesStatus =
                status === "all" || bookingStatus === status;

            card.style.display =
                matchesSearch && matchesStatus ? "block" : "none";

        });

    }

    search.addEventListener("keyup", applyFilter);
    filter.addEventListener("change", applyFilter);

});