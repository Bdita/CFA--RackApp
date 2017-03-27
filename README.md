RackApp

A customized rack application created using gem 'rack'. A Rack application is a Ruby object (not a class) that responds to call.
It takes exactly one argument with info about the request and the server, i.e the environment.
It returns an Array of exactly three values:
1. The status code (integer) 
2. Headers (Hash) and 
3. Body (Enumerable)

Rack is the foundation in which a lot of ruby web frameworks are built in.
