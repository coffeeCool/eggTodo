import 'shelljs/make'
import dd from 'ddeyes'
import {
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
} from './todos'

target.all = ->
  target.todos()
  target.oneTodo()
  target.addTodo()
  target.updateTodo()
  target.deleteTodo()

target.todos = ->
  todos()
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
  todos()
  .then (data) ->
    ids = data.reduce (r, c) ->
      [
        r...
        c.id
      ]
    , []
    for id in ids
      deleteTodo(id)
     

  
  