import dd from 'ddeyes'
import axios from 'axios'
import source from '../../src/app/config/config.default.coffee'
import AXIOS from '../../src/app/axios'

local_login = (username='何文涛', password='123456')->
  AXIOS(
    'POST'
    ''
    "#{source.source.localhost.uri}/login"
    {username:username, password:password}
  )

local_todos = ->
  AXIOS(
    'GET'
    ''
    "#{source.source.localhost.uri}/todos"
    []
  )

# local_oneTodo = ->
#   local_login()
#   .then (data) ->
#     AXIOS(
#       'GET'
#       '' 
#       "#{source.source.localhost.uri}/todos/#{data.object}" 
#       {objectId: data.object}
#     )
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
    {username: data.username, password: data.password}
  )
  
local_updateTodo = (data) ->
  AXIOS(
    "PUT"
    ''
    "#{source.source.localhost.uri}/todos/#{data.objectId}"
    {objectId: data.objectId, sessionToken: data.sessionToken, username: data.username, password: data.password}
  )

local_deleteTodo = (data) ->
  AXIOS(
    'DELETE'
    ''
    "#{source.source.localhost.uri}/todos/#{data.objectId}"
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
  getObjectId
  sleep
}