import axios from 'axios'

export default getAllUsers = ->
  axios
    method: 'get'
    url: 'http://localhost:7001/getAllUser'
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
