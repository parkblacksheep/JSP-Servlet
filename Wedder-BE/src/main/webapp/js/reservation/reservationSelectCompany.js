/* 필터 탭 */
document.addEventListener("DOMContentLoaded", function() {
    const tabs = document.querySelectorAll(".tab");
    const contents = document.querySelectorAll(".contents");

    // 첫 번째 탭 활성화
    if (tabs.length > 0 && contents.length > 0) {
        tabs[0].classList.add("tab-selected");
        contents[0].classList.add("contents-active");
    }

    tabs.forEach((tab, index) => {
        tab.addEventListener("click", () => {
            tabs.forEach((btn) => {
                btn.classList.remove("tab-selected");
            });
            contents.forEach((content) => {
                content.classList.remove("contents-active");
            });

            tab.classList.add("tab-selected");

            contents[index].classList.add("contents-active");
        });
    });
});

/* 태그 검색 */
document.querySelectorAll(".purpose-btn").forEach((item) => {
    item.addEventListener("click", () => {
        item.classList.toggle("purpose-btn-selected");
    });
});
    document.querySelectorAll(".tag-btn").forEach((item) => {
        item.addEventListener("click", () => {
            item.classList.toggle("tag-btn-selected");
        });
    });

/* 스케줄 검색 */
/* const radioButtons = document.querySelectorAll(".options input[type='radio']");
const selectDateDiv = document.querySelector(".select-date");
const daySelect = document.querySelector("#day");
const dateInput = document.querySelector("#date");

radioButtons.forEach(radio => {
    radio.addEventListener("change", () => {
        if (radio.value === "day") {
            daySelect.style.display = "block";
            dateInput.style.display = "none";
        } else if (radio.value === "date") {
            daySelect.style.display = "none";
            dateInput.style.display = "block";
        }
    });
});

// 초기 상태 설정
const checkedRadio = document.querySelector('input[name="hope-date"]:checked');
if (checkedRadio) {
    if (checkedRadio.value === "day") {
        daySelect.style.display = "block";
        dateInput.style.display = "none";
    } else {
        daySelect.style.display = "none";
        dateInput.style.display = "block";
    }
}
}); */

/* 업체 카드 선택 */
const cards = document.querySelectorAll(".company-card");
const select = document.querySelector(".select-company");

cards.forEach((card) => {
    card.addEventListener("click", () => {
        card.classList.toggle("company-card-selected");

        if (select.style.display === "block") {
            select.style.display = "none";
        } else {
            select.style.display = "block";
        }
    });
});





