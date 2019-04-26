1. What is Rails?
Rails is a web application development framework, written in Ruby. So, to me, that means it's a way to develop/create/setup a web application, with a lot of work done for me before hand. One thing that must be acknowleged is just how complicated developing a web application COULD be.... Rails is a tool to handle/assist complicated web app creation. 

2. What language is Rails written in?
Ruby

3. Refresher: What are gems?
Libraries, specifically written in Ruby?

4. What are the seven gems that make up Rails?
a. Rails
b. Puma
c. Sass-rails
d. Uglifier
e. coffee-rails
f. turbolinks
g. jbuilder

5. What is the purpose of the gemfile?
To list which gems are reuqired dependencies needed to run my Rails app. The bundler gem uses these files. 


6. What is the command to create a new Rails app from the command line?
rails new (nameGoeshere)

7. How is a GET request different from a POST request?
GET is how a browser GETS a resource
POST is how a browser SENDS a resource

8. What is REST?


9. What is a view?
A view is something I saw when building a Sinatra app. The view was the page content + the layout template combined into one webpage. 

10. What is a controller?
Requests to the application are made through the Server. Those requests are routed to different controllers. So, a request for the home page is routed to the homePage controller. 

It's possible to have more than one route go to the same controller. That is, if I have a controller for the homePage, multiple routes can go through it. Somehow I want to use the axiom: "all roads lead to Rome", but I'm not sure where it fits, yet...

A Controller appears to be able to serve an action as well...Actions are important things. it looks like Rails perhaps takes Sinatra a step further, and helps to populate the page content via actions, and then combines those in a view....

11. What is a model?