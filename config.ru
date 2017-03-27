require 'rack'

class App
     #a method to create an object that respond to call.
          def call(env) # call takes one argument: The rack environment

               #loop for clean display of each environment element for readability.
               env.each do |key,value|
               puts "#{key}: #{value}"
               end

               path = Dir.pwd + env["REQUEST_PATH"]
                 if File.exist?(path)
                    [200, {"Content-Type" => "text/html"}, [IO.read(path)]]
                    #200 is HTTP response code, {} contains hash of headers and [] contains code to read the file found in the path
                 else
                      #generate error
                    [404, {"Content-Type" => "text/html"}, ['Unknown File']]
                 end
     end
end

run App.new
