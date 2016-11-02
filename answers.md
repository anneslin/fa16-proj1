# Q0: Why is this error being thrown?

Pokemon has not yet been initialized.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

They are all the trainerless starter pokemons seeded into the database, appearing randomly by index in home_controller.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This line is calling the capture_path, which is the patch route while passing in the parameter of the current pokemon's ID.

# Question 3: What would you name your own Pokemon?

Warren

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

path with the current page's trainer ID.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
it checks the validation of pokemon and shows notification on whether or not the name is taken or empty.
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
