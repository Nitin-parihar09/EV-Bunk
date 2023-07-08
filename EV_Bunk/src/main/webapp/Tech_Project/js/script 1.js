let formBtn=document.querySelector('#login-btn');
let loginForm=document.querySelector('.login-form-container');
let formClose=document.querySelector('#form-close');
let menu=document.querySelector('#menu-bar');
let navbar=document.querySelector('.navbar');
let videoBtn=document.querySelectorAll('.vid-btn');

menu.addEventListener('click',()=>{
   menu.classList.toggle('fa-times');
   navbar.classList.toggle('active');
   
})

formBtn.addEventListener('click',()=>{
    loginForm.classList.add('active');
})

formClose.addEventListener('click',()=>{
    loginForm.classList.remove('active');
})

/*home section start*/


/*home section end*/