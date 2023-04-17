// method for navbar hiding and displaying based on user scroll
var prevScrollpos = window.pageYOffset;
window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
        document.getElementById("navbarcontainer").style.top = "0";
    } else {
        document.getElementById("navbarcontainer").style.top = "-100px";
    }
    prevScrollpos = currentScrollPos;
}