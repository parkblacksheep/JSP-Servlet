document.addEventListener('DOMContentLoaded',()=>{
  const checkall = document.querySelector('#checkset');
  const check1 = document.querySelector('#checkin1');
  const check2 = document.querySelector('#checkin2');
  const check3 = document.querySelector('#checkin3');
  const check4 = document.querySelector('#checkin4');
  const check5 = document.querySelector('#checkin5');
 

  const btn = document.querySelector('.bt');
  
    checkall.addEventListener('click',(event)=>{
        const chckValue = event.currentTarget.checked;
        
              check1.checked = chckValue;
              check2.checked = chckValue;
              check3.checked = chckValue;
              check4.checked = chckValue;
              check5.checked = chckValue;
        
        if(check1.checked && check2.checked && check3.checked)
        {
          
          btn.style.backgroundColor="black";
          btn.style.cursor = "pointer";
          link ='IDJoin.html';
          console.log("3개 확인");
          btn.disabled = false;
          btn.onclick = function(){
            location.href=link; 
          }
          // btn.addEventListener("click",()=>{
          //   location.href=link;
          // })

        }
        if (!check1.checked || !check2.checked || !check3.checked) {
         
          btn.style.backgroundColor="#959da8";
          btn.style.cursor = "default";
          link ='IDJoin.html';
          btn.disabled = true;
        }
    });


    check1.addEventListener('click', (event) => {
     
      
      if(event.currentTarget.checked == false){
        checkall.checked = false;
        
      }

      if(check1.checked && check2.checked && check3.checked)
      {
        
        btn.style.backgroundColor="black";
        btn.style.cursor = "pointer";
        link ='IDJoin.html';
        console.log("3개 확인");
        btn.disabled = false;
        btn.onclick = function(){
          location.href=link; 
        }
        // btn.addEventListener("click",()=>{
        //   location.href=link;
        // })

      }
      if (!check1.checked || !check2.checked || !check3.checked) {
        
        btn.style.backgroundColor="#959da8";
        btn.style.cursor = "default";
        link ='IDJoin.html';
        btn.disabled = true;
      }
    
    });

    check2.addEventListener('click', (event) => {
      
      
      if(event.currentTarget.checked == false){
        checkall.checked = false;
      }
      if(check1.checked && check2.checked && check3.checked)
        {
          
          btn.style.backgroundColor="black";
          btn.style.cursor = "pointer";
          link ='IDJoin.html';
          console.log("3개 확인");
          btn.disabled = false;
          btn.onclick = function(){
            location.href=link; 
          }
          // btn.addEventListener("click",()=>{
          //   location.href=link;
          // });

        }
        if (!check1.checked || !check2.checked || !check3.checked) {
         
          btn.style.backgroundColor="#959da8";
          btn.style.cursor = "default";
          link ='IDJoin.html';
          btn.disabled = true;
        }
    });

    check3.addEventListener('click', (event) => {
      
     
      if(event.currentTarget.checked == false){
        checkall.checked = false;
      }
      if(check1.checked && check2.checked && check3.checked)
        {
          
          btn.style.backgroundColor="black";
          btn.style.cursor = "pointer";
          link ='IDJoin.html';
          console.log("3개 확인");
          btn.disabled = false;
          btn.addEventListener("click",()=>{
            location.href=link;
          });

        }
        if (!check1.checked || !check2.checked || !check3.checked) {
         
          btn.style.backgroundColor="#959da8";
          btn.style.cursor = "default";
          link ='IDJoin.html';
          btn.disabled = true;
        }
    });

    check4.addEventListener('click', (event) => {
      if(event.currentTarget.checked == false){
        checkall.checked = false;
      }
    });

    check5.addEventListener('click', (event) => {
      if(event.currentTarget.checked == false){
        checkall.checked = false;
      }
    });  
});
function usePopup() {
  window.open("uselaw.html", "a", "width=710, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
  }
  
  
  function privacyPopup() {
  window.open("privacy.html", "a", "width=710, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
  }
  
  
  function marketingPopup() {
  window.open("marketing.html", "a", "width=710, height=700, left=100,resizable=no, menuber=no, scrollbars=no "); 
  }
      

  
