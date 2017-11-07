export default (app) ->

  class TodosController extends app.Controller
  
    constructor: (ctx) ->
      super ctx
      @

    todos: ->
      { ctx } = @
  
      ctx.body = await ctx.service.todoService.todos ctx.request.body
           
    oneTodo: ->
      { ctx } = @
      
      ctx.body = await ctx.service.todoService.oneTodo ctx.request.body
      
    addTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todoService.addTodo ctx.request.body
      
    updateTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todoService.updateTodo ctx.request.body

    deleteTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todoService.deleteTodo ctx.request.body
        

  return TodosController