window.onscroll = function() {myFunction()};

let navBar = document.getElementById("navBar");

let sticky = navBar.offsetTop;

let content = document.querySelector("#aboutMain");

function myFunction() {
  if (window.pageYOffset > sticky) {
    navBar.classList.add("sticky");
    content.style.paddingTop = "100px";
    navBar.style.padding= "30px 10px";
  } else {navBar.classList.remove("sticky");
  navBar.style.padding = "45px 10px";
  content.style.paddingTop = "0";
};
}