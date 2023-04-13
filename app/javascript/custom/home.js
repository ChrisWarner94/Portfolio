const headingOne = "Christopher Warner"
const headingTwo = "Full-Stack Developer"


// function typeEffect(element, text, speed) {
//     return new Promise((resolve) => {
//         let i = 0;
//         function type() {
//             const char = text.charAt(i);
//             element.innerHTML += char;
//             i++;
//             if (i > text.length - 1) {
//                 resolve();
//             } else {
//                 setTimeout(type, speed);
//             }
//         }
//         type();
//     });
// }

// function fadeIn(element, speed) {
//     introText.innerHTML = "Hello there! I'm thrilled to welcome you to my profile site. I'm a Full Stack Web Developer who has recently completed an intensive coding program, where I gained expertise in both front - end and back - end development.I'm passionate about creating visually appealing and user-friendly web applications that provide meaningful experiences to users. With a keen eye for design and a knack for problem-solving, I enjoy bringing ideas to life using the latest web technologies and techniques. Take a moment to explore my profile site and learn more about my skills."
//     return new Promise((resolve) => {
//         let opacity = 0;
//         let top = 20;
//         element.style.opacity = opacity;
//         element.style.position = 'relative';
//         element.style.top = top + 'px';
//         const intervalId = setInterval(() => {
//             opacity += 0.05;
//             top -= 1;
//             element.style.opacity = opacity;
//             element.style.top = top + 'px';
//             if (opacity >= 1) {
//                 clearInterval(intervalId);
//                 resolve();
//             }
//         }, speed);
//     });
// }


// async function runTypeEffect() {
//     await typeEffect(headingUpper, headingOne, 35);
//     await typeEffect(headingLower, headingTwo, 35);
//     await fadeIn(introText, 6);
// }

// method for navbar hiding and displaying based on user scroll
var prevScrollpos = window.pageYOffset;
window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
        document.getElementById("navbar-container").style.top = "0";
    } else {
        document.getElementById("navbar-container").style.top = "-10%";
    }
    prevScrollpos = currentScrollPos;
}

runTypeEffect();


// method for the smooth scroll to anchor on navlink click
let anchorlinks = document.querySelectorAll('a[href^="#"]')

for (let item of anchorlinks) {
    item.addEventListener('click', (e) => {
        let hashval = item.getAttribute('href')
        let target = document.querySelector(hashval)
        target.scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        })
        history.pushState(null, null, hashval)
        e.preventDefault()
    })
}


