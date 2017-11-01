import dd from 'ddeyes'

export default (app) ->

  class TodosService extends app.Service

    constructor: (ctx) ->
      super ctx
      @

    listTodos: (params) ->
      result = params
      result
    
    oneTodo: (params) ->
      result = params
      result
    
    addTodo: (params) ->
      result = params
      result
    
    updateTodo: (params) ->
      result = params
      result

    deleteTodo: (params) ->
      result = params
      result

  return TodosService
