import 'shelljs/make'
import dd from 'ddeyes'
import {
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
  getObjectId
  login
  dbTest
} from './LC_API.coffee'

import {
  LC_todos
  LC_oneTodo
  LC_addTodo
  LC_updateTodo
  LC_deleteTodo
} from '../src/app/service/todos'

target.all = ->
  dd 'ok'

# leanCloud API
target.login = ->
  login()
  .then (data) ->
    dd data

target.todos = ->
  todos()
  .then (data) ->
    dd data
  
target.oneTodo = ->
  todos()
  .then (data) ->
    oneTodo(getObjectId(data)[0])
    .then (data) ->
      dd data

target.addTodo = ->
  addTodo()
  .then (data) ->
    dd data

target.updateTodo = ->
  updateTodo()
  .then (data) ->
    dd data
  
target.deleteTodo = ->
  deleteTodo()
  .then (data) ->
    dd data


  
  