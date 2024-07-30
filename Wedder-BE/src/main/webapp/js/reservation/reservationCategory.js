/* 카테고리 선택 */
document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll(".category").forEach((item) => {
        item.addEventListener("click", () => {
            if (item.classList.contains("category-selected")) {
                document.querySelectorAll(".category").forEach((card) => {
                    card.classList.remove("category-selected");
                });
            } else {
                document.querySelectorAll(".category").forEach((card) => {
                    card.classList.remove("category-selected");
                });
                item.classList.add("category-selected");
            }
        });
    });
});