get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/auto_parts' do
  erb :auto_parts
end

get '/greasy_thing' do
  erb :greasy_thing
end

get '/wheels' do
  erb :wheels
end
