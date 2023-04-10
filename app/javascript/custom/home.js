const headingOne = "Christopher Warner"
const headingTwo = "Full-Stack Developer."
const intro = "Hello there! I'm thrilled to welcome you to my profile site. I'm a Full Stack Web Developer who has recently completed an intensive coding program, where I gained expertise in both front-end and back-end development. I'm passionate about creating visually appealing and user-friendly web applications that provide meaningful experiences to users. With a keen eye for design and a knack for problem-solving, I enjoy bringing ideas to life using the latest web technologies and techniques. Take a moment to explore my profile site and learn more about my skills. Let's connect and create some amazing web solutions together! Welcome to my world of web development possibilities!"

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

async function runTypeEffect() {
    await typeEffect(headingUpper, headingOne, 35);
    await typeEffect(headingLower, headingTwo, 45);
    await typeEffect(introText, intro, 1);
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