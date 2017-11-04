export default (app) ->
  class TodosController extends app.Controller
  
    constructor: (ctx) ->
      super ctx
      @

    todos: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.todos ctx.request.body
        
    oneTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.oneTodo ctx.request.body
      
    addTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.addTodo ctx.request.body
      
    updateTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.updateTodo ctx.request.body

    deleteTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.deleteTodo ctx.request.body
        

  return TodosController