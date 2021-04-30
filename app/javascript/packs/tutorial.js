const tutorialContainer = () => {
    const tutorialContainer = document.querySelector(".tutorial-container");
    return tutorialContainer;
}

const displayTutorial = () => {
    tutorialContainer().style.visibility = "visible";
};

const hideTutorial = () => {
    tutorialContainer().style.visibility = "hidden";
}

const handleDisplayAndHideTutorial = (event) => {
    const { target } = event;
    const className = target.getAttribute("class");

    if (className === "display-tutorial") {
        displayTutorial()
    } else if (className === "close-button") {
        hideTutorial()
    }
};

document.addEventListener('click', handleDisplayAndHideTutorial);