import dd from 'ddeyes'
import {
  leanCloud_login
  leanCloud_todos
  leanCloud_oneTodo
  leanCloud_addTodo
  leanCloud_updateTodo
  leanCloud_deleteTodo
} from './LeanCloud/LeanCloud_API'

leanCloud = ->
  do ->
    try
      await leanCloud_login()
      .then (data) ->
        leanCloud_deleteTodo data
        .then (data) ->
          dd data

      await leanCloud_addTodo
        username: '何S'
        password: '123456'
      .then (data) ->
        dd data
        
      await leanCloud_login()
      .then (data) ->
        dd data 

      await leanCloud_todos()
      .then (data) ->
        dd data

      await leanCloud_login()
      .then (data) ->
        leanCloud_oneTodo data
        .then (data) ->
          dd data
      
      await leanCloud_login()
      .then (data) ->
        leanCloud_updateTodo
          objectId: data.objectId
          sessionToken: data.sessionToken
          username: '何S'
          password: '123456'
        .then (data) ->
          dd data
    
    catch error
      dd error

export default {
  leanCloud
}