const headingUpper = "Hello, I'm Chris";
const headinglower = "I build things for the web";
const speed = 50; // speed milleseconds
let count = 0;
let printedText;

typeEffect(headingUpper, "headingUpper");

function typeEffect(printedText, target) {
    if (count < printedText.length) {
        document.getElementById(target).innerHTML += printedText.charAt(count);
        count++;
        setTimeout(typeEffect, speed);
        // console.log(typeof printedText);
    }
}

console.log("connected")