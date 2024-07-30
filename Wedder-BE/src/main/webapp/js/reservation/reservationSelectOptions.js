document.addEventListener("DOMContentLoaded", () => {
    // 모든 체크박스와 옵션 항목을 선택
    const checkboxes = document.querySelectorAll(".option-card input[type='checkbox']");
    const optionItems = document.querySelectorAll(".select-option");

    // 체크박스 클릭 이벤트 핸들러
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener("change", () => {
            const targetId = checkbox.getAttribute("data-option");
            const targetElement = document.getElementById(targetId);

            // 체크박스 상태에 따라 해당 옵션 항목 표시 또는 숨기기
            if (checkbox.checked) {
                targetElement.classList.add("show");
            } else {
                targetElement.classList.remove("show");
            }
        });
    });
});