require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  if ENV['CICLOP']
    "<p>CICLOP: #{ENV['CICLOP']}</p><p style='color:green;'>Success</p>"
  else
    "<p style='color:red;'>Failed, please, check your configuration!</p>"
  end
end
