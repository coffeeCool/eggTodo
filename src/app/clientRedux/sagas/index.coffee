import dd from 'ddeyes'
import {
  sagaEffects
  dispatch
} from 'cfx.redux-saga'

import constants from '../constants'
import {
  local_todos
  local_oneTodo
  local_addTodo
  local_updateTodo
  local_deleteTodo
} from '../../../../test/Localhost/Local_API'

{ 

  CLIENT_STORE_TODOS
  CLIENT_STORE_ONETODO
  CLIENT_STORE_ADDTODO
  CLIENT_STORE_UPDATETODO
  CLIENT_STORE_DELETETODO

  GET_TODO_FROM_LOCAL
  GET_ONETODO_FROM_LOCAL
  ADD_TODO_FROM_LOCAL
  UPD_TODO_FROM_LOCAL
  DEL_TODO_FROM_LOCAL

} = constants.types

Async =
  fetch: (action) ->
    try
      todos = yield sagaEffects.call local_todos
    catch ex
      throw new Error ex
    return unless todos
   
    newAction = {
      action...
      payload: {
        action.payload...
        todos
      }
    }
    
    yield dispatch newAction
    , GET_TODO_FROM_LOCAL

    return

  oneTodo: (action) ->
    try
      todos = yield sagaEffects.call local_oneTodo
    catch ex
      throw new Error ex
    return unless todos
    
    newAction = {
      action...
      payload: {
        action.payload...
        todos...
      }
    }
    
    yield dispatch newAction
    , GET_ONETODO_FROM_LOCAL

    return

  create: (action) ->
    try
      newTodo = yield sagaEffects.call local_addTodo
      , action.payload
    catch ex
      throw new Error ex
    return unless newTodo

    newCreateAction = {
      action...
      payload: {
        newTodo...
      }
    }

    yield dispatch newCreateAction
    , ADD_TODO_FROM_LOCAL

    return

  update: (action) ->
    try
      newTodo = yield sagaEffects.call local_updateTodo
      , action.payload
    catch ex
      throw new Error ex
    return unless newTodo
    newUpdateAction = {
      action...
      payload: {
        newTodo
      }
    }
    
    yield dispatch newUpdateAction
    , UPD_TODO_FROM_LOCAL

    return

  delete: (action) ->
    try
      newTodo = yield sagaEffects.call local_deleteTodo
      , action.payload
    catch ex
      throw new Error ex
    return unless newTodo

    newDeleteAction = {
      action...
      payload: {
        newDeleteAction...
      }
    }

    yield dispatch newDeleteAction
    , DEL_TODO_FROM_LOCAL

    return

export default [
  ->
    yield sagaEffects.takeLatest CLIENT_STORE_TODOS
    , Async.fetch
  ->
    yield sagaEffects.takeLatest CLIENT_STORE_ONETODO
    , Async.oneTodo
  ->
    yield sagaEffects.takeLatest CLIENT_STORE_ADDTODO
    , Async.create
  ->
    yield sagaEffects.takeLatest CLIENT_STORE_UPDATETODO
    , Async.update
  ->
    yield sagaEffects.takeLatest CLIENT_STORE_DELETETODO
    , Async.delete
]