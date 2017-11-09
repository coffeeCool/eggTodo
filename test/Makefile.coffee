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
} from './LeanCloud/LeanCloud_API'

import {
  localRedux_todos
  localRedux_oneTodo
  localRedux_addTodo
  localRedux_updateTodo
  localRedux_deleteTodo
} from './Localhost/LocalReducers'

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
target.local_todos = ->
  localRedux_todos()
  
target.local_oneTodo = ->
  localRedux_oneTodo()

target.local_addTodo = ->
  localRedux_addTodo()

target.local_updateTodo = ->
  localRedux_updateTodo()

target.local_deleteTodo = ->
  localRedux_deleteTodo()