import actions from  '../actions/index'
import dd from 'ddeyes'
export default (app) ->

  class TodosService extends app.Service

    todos: (params) ->
      @ctx.app.store.getState()
      
    oneTodo: (params) ->
      @ctx.app.store.getState()
     
    addTodo: (params) ->
      @ctx.app.store.dispatch actions.addTodo(params)
      @ctx.app.store.getState()
     
    updateTodo: (params) ->
      @ctx.app.store.dispatch actions.updateTodo(params)
      @ctx.app.store.getState()

    deleteTodo: (params) ->
      @ctx.app.store.dispatch actions.deleteTodo()
      @ctx.app.store.getState()
  
