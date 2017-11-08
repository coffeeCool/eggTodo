import actions from  '../redux/actions/index'
import dd from 'ddeyes'
import {
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
  dbTest
} from '../../../test/LC_API'

export default (app) ->

  class TodosService extends app.Service
    
    constructor: (ctx) ->
      super ctx
      @

    LC_todos: (params) ->
      @ctx.app.store.dispatch actions.mirTodoFromLcToStore(params)
      @ctx.app.store.getState()
      
    LC_oneTodo: (params) ->
      @ctx.app.store.getState()
     
    LC_addTodo: (params) ->
      @ctx.app.store.dispatch actions.addTodoFromLcToStore(params)
      @ctx.app.store.getState()
     
    LC_updateTodo: (params) ->
      @ctx.app.store.dispatch actions.updTodoFromLcToStore(params)
      @ctx.app.store.getState()

    LC_deleteTodo: (params) ->
      @ctx.app.store.dispatch actions.delTodoAboutStoreAndLc()
      @ctx.app.store.getState()
    
    LC_deleteAllStore: (params) ->
      @ctx.app.store.dispatch actions.delAllStoreLc()
      @ctx.app.store.getState()
  
