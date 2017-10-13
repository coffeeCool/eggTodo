import axios from 'axios'

export default refreshSessionToken = (params) ->
  axios
    method: 'put'
    url: 'http://localhost:7001/refreshSessionToken'
    dataType: 'json'
    data: {
      objectId: "#{params.objectId}"
      sessionToken: "#{params.sessionToken}"
    }
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error