import dd from 'ddeyes'
import axios from 'axios'
import source from '../src/app/config/config.default.coffee'

login = ->
  axios
    method: 'POST'
    headers: source.source.leanCloud.headers
    url: source.source.leanCloud.baseUrl+'/login'
    data:
      username: '何文涛'
      password: '123456'
    
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    dd error

todos = ->
  axios
    method: 'GET'
    headers: source.source.leanCloud.headers
    url: source.source.leanCloud.baseUrl+'/users'
    
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    dd error

oneTodo = (objectId) ->
  axios
    method: 'GET'
    headers: source.source.leanCloud.headers
    url: source.source.leanCloud.baseUrl+"/users/#{objectId}"
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    dd error

addTodo = ->
  axios
    method: 'POST'
    headers: source.source.leanCloud.headers
    url: source.source.leanCloud.baseUrl+"/users"
    data:
      username: '何文涛'
      password: '123456'
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    dd error

updateTodo = (params) ->
  login()
  .then (data) ->
    axios
      method: 'PUT'
      headers: 
        'Content-Type': 'application/json'
        'X-LC-Id': 'xY1g1VfwXDcyrMLI0UWUjmKe-gzGzoHsz' 
        'X-LC-Key': 'rRvdD9oizDgldNbbIpgFPd1X'
        'X-LC-Session': "#{data.sessionToken}"
      url: source.source.leanCloud.baseUrl+"/users/#{data.objectId}"
      dataType: 'json'
      data:
        username: '何文涛'
        password: '123456'

    .then (response) ->
      response.data if response.status is 200

    .catch (error) ->
      dd error

deleteTodo = (params) ->
  login()
  .then (data) ->
    axios
      method: 'DELETE'
      headers: 
          'Content-Type': 'application/json'
          'X-LC-Id': 'xY1g1VfwXDcyrMLI0UWUjmKe-gzGzoHsz' 
          'X-LC-Key': 'rRvdD9oizDgldNbbIpgFPd1X'
          'X-LC-Session': "#{data.sessionToken}"
      url: source.source.leanCloud.baseUrl+"/users/#{data.objectId}"
    
    .then (response) ->
      response.data if response.status is 200

    .catch (error) ->
      dd error

getObjectId = (data) ->
  ids = data.results.reduce (r, c) ->
    [
      r...
      c.objectId
    ]
  ,[]

  return ids

export {
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
  getObjectId
  login
}