const headingOne = "Christopher Warner"
const headingTwo = "Full-Stack Developer"



function placeCaret() {
    var targetthree = document.getElementById("namecursor")
    targetthree.classList.add("inputcursorname")
    setTimeout(runTypeEffect, 800);

}

placeCaret();

async function runTypeEffect() {
    await typeEffect(nameheading, headingOne);
    await typeEffect(jobtitleheading, headingTwo);
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
                setTimeout(type, (Math.floor(Math.random() * 155)));
            }
        }
        type();
    });
}






