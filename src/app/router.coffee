export default (app) ->
  app.get '/listTodos', app.controller.todos.listTodos
  app.get '/oneTodo', app.controller.todos.oneTodo
  app.get '/addTodo', app.controller.todos.addTodo
  app.get '/updateTodo', app.controller.todos.updateTodo
  app.get '/deleteTodo', app.controller.todos.deleteTodo

  return

