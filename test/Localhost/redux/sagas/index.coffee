import dd from 'ddeyes'
import {
  sagaEffects
  dispatch
} from 'cfx.redux-saga'

import constants from '../constants'
import {
  local_login
  local_todos
  local_oneTodo
  local_addTodo
  local_updateTodo
  local_deleteTodo
} from '../../service'

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
        todos # 返回的todos 结构{result:[{},{},{}]}
      }
    }

    yield dispatch newAction
    , GET_TODO_FROM_LOCAL

    return

  oneTodo: (action) ->
    try
      todo = yield sagaEffects.call local_oneTodo
      , action.payload.objectId
    catch ex
      throw new Error ex
    return unless todo

    newAction = {
      action...
      payload: {
        todo... # 返回的todos 结构{}
      }
    }

    yield dispatch newAction
    , GET_ONETODO_FROM_LOCAL

    return

  create: (action) ->
    try
      todo = yield sagaEffects.call local_addTodo
      , action.payload
    catch ex
      throw new Error ex
    return unless todo

    newAction = {
      action...
      payload: {
        todo...
      }
    }

    yield dispatch newAction
    , ADD_TODO_FROM_LOCAL

    return

  update: (action) ->
    try
      todo = yield sagaEffects.call local_updateTodo
      , action.payload
    catch ex
      throw new Error ex
    return unless todo

    yield dispatch action
    , UPD_TODO_FROM_LOCAL

    return

  delete: (action) ->
    try
      newTodo = yield sagaEffects.call local_deleteTodo
      , action.payload
    catch ex
      throw new Error ex
    return unless newTodo

    yield dispatch action
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