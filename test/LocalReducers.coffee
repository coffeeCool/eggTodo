import dd from 'ddeyes'
import { createStore } from 'cfx.redux'
import { SagaMiddleware } from 'cfx.redux-saga'
import actions from '../src/app/clientRedux/actions'
import reducers from '../src/app/clientRedux/reducers'
import sagas from '../src/app/clientRedux/sagas'
import todoApp from '../src/app/clientRedux/index'
import { sellp } from './Local_API'

SagaMW = new SagaMiddleware()

store = createStore
  todoApp: reducers
, [
  SagaMW.getMidleware()
]

SagaMW.runSagas sagas

# todos
localRedux_todos = =>
  store.dispatch actions.clientStoreTodos()
  start = do ->
    await sellp 2000
    dd store.getState()
    

# one todo
localRedux_oneTodo = =>
  store.dispatch actions.clientStoreOnetodo()
  start = do ->
    await sellp 2000
    dd store.getState()

# add todo
localRedux_addTodo = =>
  store.dispatch actions.clientStoreAddtodo()
  start = do ->
    await sellp 2000
    dd store.getState()

# update todo
localRedux_updateTodo =  =>
  store.dispatch actions.clientStoreUpdatetodo()
  start = do ->
    await sellp 2000
    dd store.getState()

# delete todo
localRedux_deleteTodo = ()=>
  store.dispatch actions.clientStoreDeletetodo()
  start = do ->
    await sellp 2000
    dd store.getState()

export {
  localRedux_todos
  localRedux_oneTodo
  localRedux_addTodo
  localRedux_updateTodo
  localRedux_deleteTodo
}
  
  
