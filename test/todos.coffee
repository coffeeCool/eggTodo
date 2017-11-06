import dd from 'ddeyes'
import axios from 'axios'

check = (req) ->
  if req.status >= 200 and req.status < 300
    true
  else
    false
  
todos =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/todos'
    dataType: 'json'
      
  .then (response) ->
    response.data if check(response) is true
  
  .catch (error) ->
    dd error

oneTodo =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/todos/1'
    dataType: 'json'
    
  .then (response) ->
    response.data if check(response) is true
  
  .catch (error) ->
    dd error

addTodo =  ->
  axios
    method: 'POST'
    url: 'http://192.168.0.192:7001/todos'
    dataType: 'json'
    data: 
      # id: 1
      name: '张飞'
      location: '武汉'
    
  .then (response) -> 
    response.data if check(response) is true
  
  .catch (error) ->
    dd error

updateTodo =  ->
  axios
    method: 'PUT'
    url: 'http://192.168.0.192:7001/todos/1'
    dataType: 'json'
    data:
      name: '李逵'
      location: '北京'
    
  .then (response) ->
    response.data if check(response) is true
  
  .catch (error) ->
    dd error

deleteTodo =  ->
  axios
    method: 'DELETE'
    url: "http://192.168.0.192:7001/todos/1"
    dataType: 'json'
    
  .then (response) ->
    response.data if check(response) is true
  
  .catch (error) ->
    dd error

# deleteTodo = (id) ->
#   axios
#     method: 'DELETE'
#     url: "http://192.168.0.192:7001/todos/#{id}"
#     dataType: 'json'
    
#   .then (response) ->
#     response.data if check(response) is true
  
#   .catch (error) ->
#     dd error
    
export {
  todos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
}

