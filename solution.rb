require "sinatra"
require "make_todo"
require "httparty"


get '/' do
	redirect '/tareas'
end

get '/tareas' do
	@tareas = Tarea.all
	erb :tareas
end

post '/tareas' do
	@tarea = Tarea.create(params[:tarea])
	redirect '/tareas'
end

get '/tareas/edit/:id' do
	@tarea = Tarea.update(params[:id])
	redirect '/tareas'
end

get '/tareas/delete/:id' do
	  @tarea = Tarea.destroy(params[:id])
	  redirect '/tareas'
end
