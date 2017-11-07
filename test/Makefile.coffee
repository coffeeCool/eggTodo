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
} from './LC_API.coffee'

target.all = ->
  dd 'ok'

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
     

  
  