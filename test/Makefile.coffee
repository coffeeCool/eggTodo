import 'shelljs/make'
import dd from 'ddeyes'
import {
  listTodos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
} from './todos'

target.all = ->
  target.listTodos()
  target.oneTodo()
  target.addTodo()
  target.updateTodo()
  target.deleteTodo()

target.listTodos = ->
  listTodos()
  .then (data) ->
    dd data
  
target.oneTodo = ->
  oneTodo()
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
  