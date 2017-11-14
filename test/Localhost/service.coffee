import dd from 'ddeyes'
import axios from 'axios'
import source from '../../src/app/config/config.default.coffee'
import AXIOS from '../../src/app/axios'

local_login = (username='何S', password='123456') ->
  AXIOS(
    'POST'
    ''
    "#{source.source.localhost.uri}/login"
    {username: username, password: password}
  )

local_todos = ->
  AXIOS(
    'GET'
    ''
    "#{source.source.localhost.uri}/todos"
    []
  )

local_oneTodo = (objectId) ->
  AXIOS(
    'GET'
    '' 
    "#{source.source.localhost.uri}/todos/#{objectId}" 
    {objectId: objectId}
  )

local_addTodo = (data) ->
  AXIOS(
    'POST'
    ''
    "#{source.source.localhost.uri}/todos"
    data
  )
  
local_updateTodo = (data) ->
  AXIOS(
    "PUT"
    data.sessionToken
    "#{source.source.localhost.uri}/todos/#{data.objectId}"
    data
  )

local_deleteTodo = (data) ->
  AXIOS(
    'DELETE'
    data.sessionToken
    "#{source.source.localhost.uri}/todos/#{data.objectId}"
    data
  )

js_local_oneTodo = (id) ->
  AXIOS(
    'GET'
    '' 
    "#{source.source.localhost.uri}/todos/#{id}" 
    {id: id}
  )

js_local_updateTodo = (data) ->
  AXIOS(
    'PUT'
    '' 
    "#{source.source.localhost.uri}/todos/#{data.id}" 
    data
  )

js_local_deleteTodo = (id) ->
  AXIOS(
    'DELETE'
    '' 
    "#{source.source.localhost.uri}/todos/#{id}" 
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

sleep = (time) ->
  new Promise (resolve) ->
    setTimeout resolve, time

export {
  local_login
  local_todos
  local_oneTodo
  local_addTodo
  local_updateTodo
  local_deleteTodo
  js_local_oneTodo
  js_local_updateTodo
  js_local_deleteTodo
  getObjectId
  sleep
}