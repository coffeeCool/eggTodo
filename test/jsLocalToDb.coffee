import dd from 'ddeyes'
import {
  local_todos
  local_addTodo
  js_local_oneTodo
  js_local_updateTodo
  js_local_deleteTodo
} from '../test/Localhost/service'

jsLocalToDb = ->
  do ->
    try
      await local_addTodo
        username: '何S'
        password: '123456'
      .then (data) ->
        dd data

      await local_todos()
      .then (data) ->
        dd data

      await js_local_oneTodo 1
      .then (data) ->
        dd data
      
      await js_local_updateTodo
          id: 1
          username: '陈S'
          password: '123456'
      .then (data) ->
        dd data
      
      await js_local_deleteTodo 1
        .then (data) ->
          dd data

    catch error
      dd error

export default {
  jsLocalToDb
}