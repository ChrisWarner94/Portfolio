// method for navbar hiding and displaying based on user scroll
var prevScrollpos = window.pageYOffset;


let hamburgerMenuOpen = false;



window.onscroll = function () {
    if (hamburgerMenuOpen === false) {
        var currentScrollPos = window.pageYOffset;
        if (prevScrollpos > currentScrollPos) {
            document.getElementById("navbarcontainer").style.top = "0";
        } else {
            document.getElementById("navbarcontainer").style.top = "-100px";
        }
        prevScrollpos = currentScrollPos;
    }
}
// calls menu on hamburger icon click

const hamburger = document.querySelector(".hamburger");
const navMenu = document.querySelector(".nav-menu");

hamburger.addEventListener("click", mobileMenu);

function mobileMenu() {
    hamburger.classList.toggle("active");
    navMenu.classList.toggle("active");
    hamburgerMenuOpen = !hamburgerMenuOpen;
}

const navLink = document.querySelectorAll(".nav-link");

navLink.forEach(n => n.addEventListener("click", closeMenu));

function closeMenu() {
    hamburger.classList.remove("active");
    navMenu.classList.remove("active");
}

