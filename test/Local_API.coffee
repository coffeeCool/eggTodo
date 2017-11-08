import dd from 'ddeyes'
import axios from 'axios'
import source from '../src/app/config/config.default.coffee'
import AXIOS from '../src/app/axios'

local_login = ->
  AXIOS(
    'POST'
    ''
    source.source.localhost.uri+'/login'
    {username:'陈欢', password:'123456'}
  )

local_todos = ->
  AXIOS(
    'GET'
    ''
    source.source.localhost.uri+'/todos'
    []
  )
  
local_oneTodo = (objectId) ->
  AXIOS(
    'GET'
    '' 
    source.source.localhost.uri+"/todos/#{objectId}" 
    ["#{objectId}"]
  )

local_addTodo = ->
  AXIOS(
    'POST'
    ''
    source.source.localhost.uri+'/todos'
    {username:'何文涛', password:'123456'}
  )
  
local_updateTodo = (params) ->
  local_login()
  .then (data) ->
    AXIOS(
      "PUT"
      ''
      source.source.localhost.uri+"/todos/#{data.objectId}" 
      {objectId: data.objectId, sessionToken: data.sessionToken, username: '何文涛', password: '123456'}
    )

local_deleteTodo = (params) ->
  local_login()
  .then (data) ->
    AXIOS(
      'DELETE'
      ''
      source.source.localhost.uri+"/todos/#{data.objectId}"
      {objectId: data.objectId, sessionToken: data.sessionToken}
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
  local_login
  local_todos
  local_oneTodo
  local_addTodo
  local_updateTodo
  local_deleteTodo
  getObjectId
  dbTest
}