const fetchWelcomeMessage = () => {
    const signupLoginContainer = document.querySelector(".signup-login-container")

    fetch("/welcome_msg").then(response => {
        response.text().then(text => {
            signupLoginContainer.innerHTML = text;
        })
    })    
}

const fetchLoginForm = () => {
    const signupLoginContainer = document.querySelector(".signup-login-container");
    fetch("/login_form").then(response => {
        response.text().then(text => {
            signupLoginContainer.innerHTML = text
        })
    })
}

const fetchSignupForm = () => {
    const signupLoginContainer = document.querySelector(".signup-login-container");
    fetch("/signup_form").then(response => {
        response.text().then(text => {
            signupLoginContainer.innerHTML = text
        })
    })
}

const handleSignupLoginClick = (event) => {
    const { target } = event;
    const className = target.getAttribute("class");

    if (className === "login-button") {
        fetchLoginForm();
    } else if (className === "signup-button") {
        fetchSignupForm();
    }
}

document.addEventListener('turbolinks:load', fetchWelcomeMessage)
document.addEventListener('click', handleSignupLoginClick);



