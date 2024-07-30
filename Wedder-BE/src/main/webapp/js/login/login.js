// const modal = document.querySelector('.modal');
// const btnOpenModal=document.querySelector('#forgot');
// btnOpenModal.addEventListener("click", ()=>{
//     modal.style.display="flex";
// });

let email = document.querySelector('#EmailID');
let pas = document.querySelector('#Password');
const loginbutton = document.querySelector('#continue');


function main(){
    window.open("../../html/main/main.html");
}

function showPopup() {
    window.open("passfind.html", "a", "width=500, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
}

function usePopup() {
    window.open("uselaw.html", "a", "width=710, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
}


function privacyPopup() {
    window.open("privacy.html", "a", "width=710, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
}


function marketingPopup() {
    window.open("marketing.html", "a", "width=710, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
}


pass1=document.querySelector("#Password");
//눈 클릭
const bt = document.querySelector(".btn");
let typecheck=false;
bt.addEventListener("click",function(){
    if(!typecheck){
        pass1.prop("type","password");
        bt.src="file:///C:/Users/WD/Downloads/visibility_24dp_5F6368_FILL0_wght400_GRAD0_opsz24%20(1).svg";
        typecheck=true;
    }else if(typecheck){
        pass1.prop("type","text");
        bt.src="file:///C:/Users/WD/Downloads/visibility_off_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg"
        typecheck=false;
    }
    
});
