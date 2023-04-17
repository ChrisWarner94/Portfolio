const headingOne = "Christopher Warner"
const headingTwo = "Full-Stack Developer"

// method for the smooth scroll to anchor on navlink click

placeCaret();

function placeCaret() {
    var targetthree = document.getElementById("namecursor")
    targetthree.classList.add("inputcursorname")
    setTimeout(runTypeEffect, 800);

}

async function runTypeEffect() {
    await typeEffect(nameheading, headingOne);
    await typeEffect(jobtitleheading, headingTwo);
    await fadeInBottom(introtext, 25);
    await fadeInRight(stackpanel, 15);
    await fadeInRighta(linkscontainer, 12);
    await fadeInRighta(linkone, 12,);
    await fadeInRighta(linktwo, 12,);
    await fadeInRighta(linkthree, 12,);
}


function typeEffect(element, text) {
    return new Promise((resolve) => {
        let i = 0;
        function type() {
            const char = text.charAt(i);
            element.innerHTML += char;
            i++;
            if (i > text.length - 1) {
                if (element === nameheading) {
                    var target = document.getElementById("namecursor")
                    target.classList.remove("inputcursorname")
                    var targettwo = document.getElementById("jobtitlecursor")
                    targettwo.classList.add("inputcursorname")
                }
                resolve();
            } else {
                setTimeout(type, (Math.floor(Math.random() * 205)));
            }
        }
        type();
    });
}






function fadeInRighta(element, speed) {
    return new Promise((resolve) => {
        let opacity = 0;
        let bottom = 20;
        element.style.display = "flex"
        element.style.opacity = opacity;
        element.style.position = 'relative';
        element.style.bottom = bottom + 'px';
        const intervalId = setInterval(() => {
            opacity += 0.05;
            bottom -= 1;
            element.style.opacity = opacity;
            element.style.bottom = bottom + 'px';
            if (opacity >= 1) {
                clearInterval(intervalId);
                resolve();
            }
        }, speed);
    });

}

function fadeInRight(element, speed) {
    return new Promise((resolve) => {
        let opacity = 0;
        let left = 20;
        element.style.display = "grid"
        element.style.opacity = opacity;
        element.style.position = 'relative';
        element.style.left = left + 'px';
        const intervalId = setInterval(() => {
            opacity += 0.05;
            left -= 1;
            element.style.opacity = opacity;
            element.style.left = left + 'px';
            if (opacity >= 1) {
                clearInterval(intervalId);
                resolve();
            }
        }, speed);
    });

}

function fadeInBottom(element, speed) {
    element.innerHTML = "Hello there! I'm thrilled to welcome you to my profile site. I'm a Full Stack Web Developer with a passion for creating visually appealing and user-friendly web applications that provide meaningful experiences to users. With a keen eye for design and a knack for problem-solving, I enjoy bringing ideas to life using the latest web technologies and techniques. Take a moment to explore my profile site and learn more about my skills."
    return new Promise((resolve) => {
        let opacity = 0;
        let top = 20;
        element.style.opacity = opacity;
        element.style.position = 'relative';
        element.style.top = top + 'px';
        const intervalId = setInterval(() => {
            opacity += 0.05;
            top -= 1;
            element.style.opacity = opacity;
            element.style.top = top + 'px';
            if (opacity >= 1) {
                clearInterval(intervalId);
                resolve();
            }
        }, speed);
    });
}