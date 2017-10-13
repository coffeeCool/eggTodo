import axios from 'axios'

export default getUserInfo = (params) ->
  axios
    method: 'get'
    url: "http://localhost:7001/getUserInfo?objectId=#{params.objectId}"
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
