# lslozano-final
MovieFlix - Share the movies you've watched with your friends, review and talk about them


**Details of the Project:**

- Platform where users can add what movies they have watched and a review about them.

- These movies and reviews will be displayed on the homepage of the user.

- A user can add friends

- Between friends you can see what movies each other has seen and reviewed.  


**High level summary of work:**

By the first week my plan is to have a connection between the models and be able to create an interaction between them.

For the second week I need to make sure everything is working fine, making different test by creating users, movies, reviews and using the chat.

And for the final week, I will be adding the styles that are missing.


**What will the project entail:**

- Implement a model for user that has many movies.

- User model has a name (considering adding an email) and movies.

- Implement a movie model that belongs to the user.

- Movies will have a name, image, review and chat.

- Implement a Chat model which belongs to a movie.

- Chat will have a body, the movie id and the user who created it.

- Implementing resources and surely nested resources.

- Platform where users can add what movies they have watched and a review about them.

- These movies and reviews will be displayed on the homepage of the user.

- A user can add friends

- Between friends you can see what movies each other has seen and reviewed.  
  

**MVP:**

The MVP was made using purely ruby on rails, javascript, html and css without any third party libraries.
At this point in time, the project can manage:

- Signup

- Login

- View the profile of the user

- Create reviews for movies

- Display the movies reviewed by the user in their profile

- Display movies in the public page accordingly if they were set to public or private

- Visit individual movie review pages

- Leave comments on each review

**What would a V2 of the the project would entail:**

- Fetch comments in real time to update the comments in the movie reviewed

- Add a password for the creation of the account.

- Add a secure login

- Add friends 

- Check friends private movies