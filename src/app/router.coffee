export default (app) ->
  app.get '/todos', app.controller.todos.todos
  app.get '/todos/:id', app.controller.todos.oneTodo
  app.post '/todos', app.controller.todos.addTodo
  app.put '/todos/:id', app.controller.todos.updateTodo
  app.delete '/todos/:id', app.controller.todos.deleteTodo

  # app.get '/todos', app.controller.todos.todos
  # app.get '/todos/:id', app.controller.todos.oneTodo
  # app.post '/todos', app.controller.todos.addTodo
  # app.put '/todos/:id', app.controller.todos.updateTodo
  # app.delete '/todos/:id', app.controller.todos.deleteTodo
  return

