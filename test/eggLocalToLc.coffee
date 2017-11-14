import dd from 'ddeyes'
import {
  local_login
  local_todos
  local_oneTodo
  local_addTodo
  local_updateTodo
  local_deleteTodo
} from '../test/Localhost/service'

eggLocalToLc = ->
  do ->
    try
      await local_login()
      .then (data) ->
        local_deleteTodo data
        .then (data) ->
          dd data

      await local_addTodo
        username: '何S'
        password: '123456'
      .then (data) ->
        dd data
        
      await local_login()
      .then (data) ->
        dd data 

      await local_todos()
      .then (data) ->
        dd data

      await local_login()
      .then (data) ->
        local_oneTodo data.objectId
        .then (data) ->
          dd data
      
      await local_login()
      .then (data) ->
        local_updateTodo
          objectId: data.objectId
          sessionToken: data.sessionToken
          username: '何S'
          password: '123456'
        .then (data) ->
          dd data

    catch error
      dd error

export default {
  eggLocalToLc
}