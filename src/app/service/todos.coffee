import actions from  '../redux/actions/index'
import dd from 'ddeyes'

export default (app) ->

  class TodosService extends app.Service

    todos: (params) ->
      @ctx.app.store.dispatch actions.mirTodoFromLcToStore(params)
      @ctx.app.store.getState()
      
    oneTodo: (params) ->
      @ctx.app.store.getState()
     
    addTodo: (params) ->
      @ctx.app.store.dispatch actions.addTodoFromLcToStore(params)
      @ctx.app.store.getState()
     
    updateTodo: (params) ->
      @ctx.app.store.dispatch actions.updTodoFromLcToStore(params)
      @ctx.app.store.getState()

    deleteTodo: (params) ->
      @ctx.app.store.dispatch actions.delTodoAboutStoreAndLc()
      @ctx.app.store.getState()
    
    deleteAllStore: (params) ->
      @ctx.app.store.dispatch actions.delAllStoreLc()
      @ctx.app.store.getState()
  
