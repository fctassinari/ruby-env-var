require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  if ENV['Decoder_Ring']
    "<p>Decoder_Ring: #{ENV['Decoder_Ring']}</p><p style='color:green;'>Success</p>"
  else
    "<p style='color:red;'>Failed, please, check your configuration!</p>"
  end
end
