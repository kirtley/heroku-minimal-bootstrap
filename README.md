# Heroku Minimal Bootstrap with Cedar stack

This bootstrap allows us to host static sites on Cedar stack (Ruby&Rack).

It's pretty simple and minimal.

Demo: [http://heroku-minimal.herokuapp.com/](http://heroku-minimal.herokuapp.com/)


Static sites hosting with Ruby is pretty easy on Bamboo stack,
but Cedar stack is different.
You should understand and obey some rules: needed for put Procfile, or Gemfile, etc....


# Usage
Just put html/css/js to _public/_

After add/edit, type following commands.

    % git add .
    % git commit -m 'some msg'
    % git push heroku master
    % heroku open


That's all. :)


# Local development

Just type `foreman check && foreman start` and access
[http://localhost:5000/](http://localhost:5000/)


