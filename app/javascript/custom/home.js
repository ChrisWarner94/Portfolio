const headingOne = "Christopher Warner"
const headingTwo = "Full-Stack Developer."
const intro = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

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