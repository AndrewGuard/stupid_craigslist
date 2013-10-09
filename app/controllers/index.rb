get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/new_post' do
  erb :new_post
end

post '/new_post' do
  @post = Post.create(description: params[:description], location: params[:location], price: params[:price], phone: params[:phone])
  erb :post
end

get '/posts' do
  @posts = Post.all
  erb :show_all_posts
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_page
end
  

get '/post/:id/delete' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect :posts
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

get '/rants_and_raves' do
  erb :rants_and_raves
end

get '/rants' do
  erb :rants
end

get '/raves' do
  erb :raves
end
