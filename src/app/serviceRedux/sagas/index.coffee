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
} from '../../../../test/Localhost/Local_API'

{ 
  MIR_TODO_FROM_LC_TO_STORE
  DEL_TODO_ABOUT_STORE_AND_LC
  ADD_TODO_FROM_LC_TO_STORE
  UPD_TODO_FROM_LC_TO_STORE

  GET_TODO_FROM_LC
  DEL_ALL_STORE_LC
  ADD_TODO_TO_STORE_LC
  UPD_TODO_STORE_FROM_LC

  DEL_ALL_STORE
} = constants.types

Async =
  # get todos from LC
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
    , GET_TODO_FROM_LC
    return

  # delete LC todo
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
    , DEL_ALL_STORE_LC

  # add todo
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
    , ADD_TODO_TO_STORE_LC

    return

  # update todo
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
    , UPD_TODO_STORE_FROM_LC

    return

  # delete store
  deleteAllStore: (action) ->
    newDelAllAction = {
      action...
      payload: {
      }
    }
    yield dispatch newDelAllAction
    , DEL_ALL_STORE_LC

    return

export default [
  ->
    yield sagaEffects.takeLatest MIR_TODO_FROM_LC_TO_STORE
    , Async.fetch
  ->
    yield sagaEffects.takeLatest DEL_TODO_ABOUT_STORE_AND_LC
    , Async.delete
  ->
    yield sagaEffects.takeLatest ADD_TODO_FROM_LC_TO_STORE
    , Async.create
  ->
    yield sagaEffects.takeLatest UPD_TODO_FROM_LC_TO_STORE
    , Async.update
  ->
    yield sagaEffects.takeLatest DEL_ALL_STORE
    , Async.deleteAllStore
]