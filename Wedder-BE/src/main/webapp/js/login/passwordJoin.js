let pass1 = document.querySelector(".pass > #passSet1");
let pass2 = document.querySelector(".pass > #passSet2");
const eg = /^[a-zA-Z]/;
const sp = /[!@#$%^&*()_+~`,./?;'";:]/;
const su = /[0-9]/;

const up1 = document.querySelector("#upper");
const up2 = document.querySelector("#num");
const up3 = document.querySelector("#special");
const up4 = document.querySelector("#limit");

const up5 = document.querySelector("#checkset");

const btn = document.querySelector(".bt");

let a = false;
let b = false;
let c = false;
let d = false;
let e = false;


pass1.addEventListener('keyup',()=>{
    //글자수
    if(pass1.value.length >= 8)
    {
        document.querySelector(".check > #up4").style.color="black";
        up4.setAttribute("id","limit2"); 
        a=true;
    }
    else{
        document.querySelector(".check > #up4").style.color="#b1b1b1";
        up4.setAttribute("id","limit"); 
        a=false;
    }
    //대소문자
    if(eg.test(pass1.value))
    {
        document.querySelector(".check > #up1").style.color="black";
        up1.setAttribute("id","upper2"); 
        b=true;
    }
    else{
        document.querySelector(".check > #up1").style.color="#b1b1b1";
        up1.setAttribute("id","upper"); 
        b=false;
    }
    //특수문자
    if(sp.test(pass1.value))
    {
        document.querySelector(".check > #up3").style.color="black";
        up3.setAttribute("id","special2"); 
        c=true;
    }
    else{
        document.querySelector(".check > #up3").style.color="#b1b1b1";
        up3.setAttribute("id","special"); 
        console.log(up1); 
        c=false;  
    }
    //숫자
    if(su.test(pass1.value))
    {
        document.querySelector(".check > #up2").style.color="black";
        up2.setAttribute("id","num2");
        d=true;
        
    }
    else{
        document.querySelector(".check > #up2").style.color="#b1b1b1";
        up2.setAttribute("id","num");
        d=false;
    }

    if(pass2.value == pass1.value && a && b && c && d && e)
        {
            document.querySelector(".check > #up5").style.color="black";
            up5.setAttribute("id","checkset2");
                console.log("오픈 비밀문");
                btn.style.backgroundColor="black";
                link ='joinPaly.html';
                btn.style.cursor = "pointer";
                btn.disabled = false;
                btn.onclick = function(){
                    location.href=link; 
                }
            
    
        }
        else{
            document.querySelector(".check > #up5").style.color="#b1b1b1";
            up5.setAttribute("id","checkset");
            btn.style.backgroundColor="#b1b1b1";
            btn.style.cursor = "default";
            btn.disabled = true;
        
    }

});

pass2.addEventListener('keyup',()=>{
    if(pass2.value == pass1.value && a && b && c && d)
    {
        e=true;
        document.querySelector(".check > #up5").style.color="black";
        up5.setAttribute("id","checkset2");
            console.log("오픈 비밀문");
            btn.style.backgroundColor="black";
            link ='joinPaly.html';
            btn.style.cursor = "pointer";
            btn.disabled = false;
            btn.onclick = function(){
                location.href=link; 
            }
        

    }
    else{
        e=false;
        document.querySelector(".check > #up5").style.color="#b1b1b1";
        up5.setAttribute("id","checkset");
        btn.style.backgroundColor="#b1b1b1";
        btn.style.cursor = "default";
        btn.disabled = true;
    
    }
});

//눈 클릭
const bt = document.querySelector(".btn");
let typecheck=false;
bt.addEventListener("Click",()=>{
    if(!typecheck){
        pass1.prop("type","password");
        pass2.prop("type","password");
        bt.src="file:///C:/Users/WD/Downloads/visibility_24dp_5F6368_FILL0_wght400_GRAD0_opsz24%20(1).svg";
        typecheck=true;
    }else if(typecheck){
        pass1.prop("type","text");
        pass2.prop("type","text");
        bt.src="file:///C:/Users/WD/Downloads/visibility_off_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg"
        typecheck=false;
    }
    
});