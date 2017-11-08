import 'shelljs/make'
import dd from 'ddeyes'
import {
  leanCloud_login
  leanCloud_todos
  leanCloud_oneTodo
  leanCloud_addTodo
  leanCloud_updateTodo
  leanCloud_deleteTodo
  getObjectId
  dbTest
} from './LeanCloud_API'

import {
  local_login
  local_todos
  local_oneTodo
  local_addTodo
  local_updateTodo
  local_deleteTodo
} from './Local_API'

import {
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
} from '../src/app/service/todos'

target.all = ->
  dd 'ok'

# leanCloud API
target.leanCloud_login = ->
  leanCloud_login()
  .then (data) ->
    dd data

target.leanCloud_todos = ->
  leanCloud_todos()
  .then (data) ->
    dd data
  
target.leanCloud_oneTodo = ->
  leanCloud_todos()
  .then (data) ->
    leanCloud_oneTodo(getObjectId(data)[0])
    .then (data) ->
      dd data

target.leanCloud_addTodo = ->
  leanCloud_addTodo()
  .then (data) ->
    dd data

target.leanCloud_updateTodo = ->
  leanCloud_updateTodo()
  .then (data) ->
    dd data
  
target.leanCloud_deleteTodo = ->
  leanCloud_deleteTodo()
  .then (data) ->
    dd data

# local API
target.local_login = ->
  local_login()
  .then (data) ->
    dd data

target.local_todos = ->
  local_todos()
  .then (data) ->
    dd data
  
target.local_oneTodo = ->
  local_todos()
  .then (data) ->
    local_oneTodo(getObjectId(data)[0])
    .then (data) ->
      dd data

target.local_addTodo = ->
  local_addTodo()
  .then (data) ->
    dd data

target.local_updateTodo = ->
  local_updateTodo()
  .then (data) ->
    dd data

target.local_deleteTodo = ->
  local_deleteTodo()
  .then (data) ->
    dd data