import dd from 'ddeyes'
import axios from 'axios'
import source from '../../src/app/config/config.default.coffee'
import AXIOS from '../../src/app/axios'

leanCloud_login = ->
  AXIOS(
    'POST'
    ''
    source.source.leanCloud.baseUrl+'/login'
    {username:'何文涛', password:'123456'}
  )

leanCloud_todos = ->
  AXIOS(
    'GET'
    ''
    source.source.leanCloud.baseUrl+'/users'
    []
  )
  
leanCloud_oneTodo = (objectId) ->
  AXIOS(
    'GET'
    '' 
    source.source.leanCloud.baseUrl+"/users/#{objectId}" 
    []
  )

leanCloud_addTodo = ->
  AXIOS(
    'POST'
    ''
    source.source.leanCloud.baseUrl+'/users'
    {username:'何文涛', password:'123456'}
  )
  
leanCloud_updateTodo = (params) ->
  login()
  .then (data) ->
    AXIOS(
      "PUT"
      data.sessionToken
      source.source.leanCloud.baseUrl+"/users/#{data.objectId}" 
      {username:'何文涛', password:'123456'}
    )

leanCloud_deleteTodo = (params) ->
  login()
  .then (data) ->
    AXIOS(
      'DELETE', 
      data.sessionToken, 
      source.source.leanCloud.baseUrl+"/users/#{data.objectId}"
      []
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