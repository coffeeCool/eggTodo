import dd from 'ddeyes'
import axios from 'axios'
import source from '../../src/app/config/config.default.coffee'
import AXIOS from '../../src/app/axios'

leanCloud_login = (username='何S', password='123456')->
  AXIOS(
    'POST'
    ''
    "#{source.source.leanCloud.baseUrl}/login"
    {username: username, password: password}
  )

leanCloud_todos = ->
  AXIOS(
    'GET'
    ''
    "#{source.source.leanCloud.baseUrl}/users"
    []
  )
  
leanCloud_oneTodo = (data) ->
  AXIOS(
    'GET'
    '' 
    "#{source.source.leanCloud.baseUrl}/users/#{data.objectId}"
    data
  )

leanCloud_addTodo = (data) ->
  AXIOS(
    'POST'
    ''
    "#{source.source.leanCloud.baseUrl}/users"
    data
  )
  
leanCloud_updateTodo = (data) ->
  AXIOS(
    "PUT"
    data.sessionToken
    "#{source.source.leanCloud.baseUrl}/users/#{data.objectId}"
    data
  )

leanCloud_deleteTodo = (data) ->
  AXIOS(
    'DELETE'
    data.sessionToken
    "#{source.source.leanCloud.baseUrl}/users/#{data.objectId}"
    data
  )

getObjectId = (data) ->
  ids = data.results.reduce (r, c) ->
    [
      r...
      c.objectId
    ]
  ,[]

  return ids

dbTest = (user, store) ->
  dd
    db: user
    store: store

export {
  leanCloud_login
  leanCloud_todos
  leanCloud_oneTodo
  leanCloud_addTodo
  leanCloud_updateTodo
  leanCloud_deleteTodo
  getObjectId
  dbTest
}