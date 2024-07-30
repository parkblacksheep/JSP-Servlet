/* 모달창 */
document.addEventListener("DOMContentLoaded", function () {
    const modal = document.querySelector(".modal");
    const closeBtn = document.querySelector(".modal-close-btn");
    const modalOn = document.querySelector("#icon");

    modalOn.addEventListener("click", function() {
        modal.classList.add("show");
    });

    closeBtn.addEventListener("click", function() {
        modal.classList.remove("show");
    });

    window.addEventListener("click", function(event) {
        if (event.target === modal) {
            modal.classList.remove("show");
        }
    });
  });

