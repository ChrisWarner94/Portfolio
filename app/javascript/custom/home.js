const headingOne = "Christopher Warner"
const headingTwo = "Full-Stack Developer"
const skills = "Ruby   C#   Javascript   HTML5   CSS3   Ruby-On-Rails   PostgreSQL   SQLite   Git   Github   SCSS   Bootstrap   Heroku"


function typeEffect(element, text, speed) {
    return new Promise((resolve) => {
        let i = 0;
        function type() {
            const char = text.charAt(i);
            element.innerHTML += char;
            i++;
            if (i > text.length - 1) {
                resolve();
            } else {
                setTimeout(type, speed);
            }
        }
        type();
    });
}

function fadeIn(element, speed) {
    introText.innerHTML = "Hello there! I'm thrilled to welcome you to my profile site. I'm a Full Stack Web Developer who has recently completed an intensive coding program, where I gained expertise in both front - end and back - end development.I'm passionate about creating visually appealing and user-friendly web applications that provide meaningful experiences to users. With a keen eye for design and a knack for problem-solving, I enjoy bringing ideas to life using the latest web technologies and techniques. Take a moment to explore my profile site and learn more about my skills."
    return new Promise((resolve) => {
        let opacity = 0;
        let top = 20; // value sets the initial top position of the element
        element.style.opacity = opacity;
        element.style.position = 'relative';
        element.style.top = top + 'px';
        const intervalId = setInterval(() => {
            opacity += 0.05;
            top -= 1; // value controls how much the element moves up
            element.style.opacity = opacity;
            element.style.top = top + 'px';
            if (opacity >= 1) {
                clearInterval(intervalId);
                resolve();
            }
        }, speed);
    });
}


async function runTypeEffect() {
    await typeEffect(headingUpper, headingOne, 55);
    await typeEffect(headingLower, headingTwo, 55);
    await fadeIn(introText, 20);
    await typeEffect(skillsText, skills, 20);
}

runTypeEffect();

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