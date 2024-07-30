let id = document.querySelector("#idjoin");
let btn = document.querySelector(".bt")
const fil = /[a-zA-Z0-9]+[@][a-zA-Z0-9]+[.]+[a-zA-Z]+[.]*[a-zA-Z]*/gi;
id.addEventListener("keyup",()=>{

    if(fil.test(id.value)){
        btn.style.backgroundColor ="black";
        btn.disabled = false; 
        btn.style.cursor = "pointer";
    
    }else if(!fil.test(id.value)) {
        btn.style.backgroundColor ="#b1b1b1";
        btn.disabled = true;
        btn.style.cursor = "default";
    }
});