import dd from 'ddeyes'
import axios from 'axios'

listTodos =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/listTodos'
    dataType: 'json'
    
  .then (response) ->
    response.data 
  
  .catch (error) ->
    dd error

oneTodo =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/oneTodo'
    dataType: 'json'
    
  .then (response) ->
    response.data 
  
  .catch (error) ->
    dd error

addTodo =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/addTodo'
    dataType: 'json'
    
  .then (response) ->
    response.data 
  
  .catch (error) ->
    dd error

updateTodo =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/updateTodo'
    dataType: 'json'
    
  .then (response) ->
    response.data 
  
  .catch (error) ->
    dd error

deleteTodo =  ->
  axios
    method: 'GET'
    url: 'http://192.168.0.192:7001/deleteTodo'
    dataType: 'json'
    
  .then (response) ->
    response.data 
  
  .catch (error) ->
    dd error
    
export {
  listTodos
  oneTodo
  addTodo
  updateTodo
  deleteTodo
}

