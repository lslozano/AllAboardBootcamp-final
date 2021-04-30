const redirectToMovie = (movieContainer) => {
    const movieId = movieContainer.getAttribute("data-movie-id");
    const isMoviePrivate = movieContainer.getAttribute("data-movie-privacy");

    if (isMoviePrivate === "Yes") {
        alert("This review is private and can not be seen in the public page.")
    } else {
        location.replace(`/movies/${movieId}`)
    };
};

const handleMovieClick = (event) => {
    const { target } = event
    if (target.tagName === "DIV" || target.tagName === "H4" || target.tagName === "P" || target.tagName === "IMG") {
        redirectToMovie(target.closest(".movie"))
    };
};

document.addEventListener('click', handleMovieClick);
