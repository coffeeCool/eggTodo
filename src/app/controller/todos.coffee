export default (app) ->
  class TodosController extends app.Controller
  
    constructor: (ctx) ->
      super ctx
      @

    todos: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.todos 
        todos:[
          {
            id: 1
            name: 'zhangsan'
            location: 'wuhan'
          },
          {
            id: 2
            name: 'lisi'
            location: 'beijing'
          }
        ]
      
    oneTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.oneTodo 
        todos: [
          {
            id: 1
            name: 'zhangsan'
            location: 'wuhan'
          }
        ]

    addTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.addTodo
        todos:[
          {
            id: 3
            name: 'wangwu'
            location: 'shanghai'
          }
        ]
      
    updateTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.updateTodo
        todo: [
          {
            id: 1
            name: '张三'
            location: '武汉'
          }
        ]

    deleteTodo: ->
      { ctx } = @

      ctx.body = await ctx.service.todos.deleteTodo
        todos: []

  

  return TodosController