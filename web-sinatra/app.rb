require "sinatra"
require "sinatra/reloader" if development?

enable :sessions

get "/" do
  # passing to template
  # 可直接在 template 用
  @name = session[:thankyou666]
  # 導到 ruby 的 template
  erb :index, layout: :default_layout
end

get "/form" do
  erb :form, layout: :default_layout
end

post "/form" do
  # receive form data
  height = params[:height].to_f / 100
  weight = params[:weight].to_f
  bmi = weight / height * height

  erb :result, locals: { result: bmi } #由 locals 指定至模板的區域變數
end

get "/login" do
  erb :login
end

post "/login" do
  username = params[:username]
  password = params[:password]

  if username === 'doge@mail.com' and password === '1234'
    session[:thankyou666] = username
  end

  redirect '/'
end

# gems
# sinatra-contrib  -> sinatra/reloader
# Thin or puma -> 效能較好的 init server
