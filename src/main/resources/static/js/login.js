console.clear();

window.onload = function () {
   
const loginBtn = document.getElementById('login');
const signupBtn = document.getElementById('signup');
 
//로그인창이 회원가입보다 먼저 뜨게끔
signupBtn.parentNode.classList.add('slide-up')   
//회원가입 > 부모 찾아서 추가
loginBtn.parentNode.parentNode.classList.remove('slide-up')
//로그인  > 부모의 부모를 찾아서 제거

loginBtn.addEventListener('click', (e) => {
  let parent = e.target.parentNode.parentNode;
  Array.from(e.target.parentNode.parentNode.classList).find((element) => {
    if(element !== "slide-up") {
      parent.classList.add('slide-up')
    }else{
      signupBtn.parentNode.classList.add('slide-up')
      parent.classList.remove('slide-up')
    }
  });
});

signupBtn.addEventListener('click', (e) => {
  let parent = e.target.parentNode;
  Array.from(e.target.parentNode.classList).find((element) => {
    if(element !== "slide-up") {
      parent.classList.add('slide-up')
    }else{
      loginBtn.parentNode.parentNode.classList.add('slide-up')
      parent.classList.remove('slide-up')
    }
  });
});
}