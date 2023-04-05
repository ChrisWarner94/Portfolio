const headingOne = "Hello, I'm Chris"
const headingTwo = "I build things for the web"

function typeEffect(element, text) {
    return new Promise((resolve) => {
        let i = 0;
        function type() {
            const char = text.charAt(i);
            element.textContent += char;
            i++;
            if (i > text.length - 1) {
                resolve();
            } else {
                setTimeout(type, 35);
            }
        }
        type();
    });
}

async function runTypeEffect() {
    await typeEffect(headingUpper, headingOne);
    await typeEffect(headingLower, headingTwo);
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