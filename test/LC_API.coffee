import dd from 'ddeyes'
import axios from 'axios'
import source from '../src/app/config/config.default.coffee'
import AXIOS from '../src/app/axios'

login = ->
  AXIOS('POST', '', '/login', {username:'何文涛',password:'123456'})

todos = ->
  AXIOS('GET', '', '/users', [])
  
oneTodo = (objectId) ->
  AXIOS('GET', '', "/users/#{objectId}", [])

addTodo = ->
  AXIOS('POST', '', '/users', {username:'何文涛',password:'123456'})
  
updateTodo = (params) ->
  login()
  .then (data) ->
    AXIOS("PUT", data.sessionToken, "/users/#{data.objectId}", {username:'何文涛',password:'123456'})

deleteTodo = (params) ->
  login()
  .then (data) ->
    AXIOS('DELETE', data.sessionToken, "/users/#{data.objectId}")

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
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
  getObjectId
  login
  dbTest
}