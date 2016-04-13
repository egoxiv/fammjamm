# FAMJAM! 
A task and reposibilities management tool for busy families.

[See my trello board!](trello.com/b/uXURcotB)
[Check out FamilyJam on Heroku](http://familyjam.herokuapp.com/)

## Summary 
FamilyJam is an app for busy families that need a todo list. Getting started is simple, to create a profile all you need is your name, email and a clever username, and thats it! After signing up, you will have an empty dashboard waiting for you to enter todos, add due dates, give members todos, and attach notes to each todos so you never forget why your created it in the first place

## MVP Specs
- Each user will have the ability to create tasks
- Each user will have the ability to add a due date to each task 
- Each user will have the ability to attach a note to each task 
- Each user will have the ability to mark a task complete
- Each user will have the ability to assign tasks to other people in the family (*stretch)
- Each users will be able to see the family task list
- Each user will have the ability to filter out family tasks so they only see their own

## FamilyJam was built using...
- HTML, CSS, JavaScript (ofcourse!)
- Ruby on Rails
- Postgres DB
- Bcrypt for password protection (Gem)
- Byebug for debugging (Gem)
- RESTful routing
- [Deployed on Heroku!](trello.com/b/uXURcotB)


## Stretch Goals
- Comments

## Problems 
- Problem 1: Cannot get the user login, and sign up forms to function correctly. Cantaccess the data that is being entered or store it in the database. 

- Problem 2: Cannot get the user data to append in the specific places when the user logs into his/her dashboard (example: username in the username location, each task in the task list, textarea with task description and the name of the task in the task detail section.)

- Problem 3: Have not found a solid way to create a family with multiple members or a method for these members to interact with eachother via FamilyJam. 

- Problem 4: Have not found a way to assign tasks members in a family. 

- Problem 5: Have not found a way to assign due dates to a task when a users needs a due date. 





