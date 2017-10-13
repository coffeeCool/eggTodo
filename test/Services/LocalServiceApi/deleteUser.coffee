import axios from 'axios'

export default deleteUser = (params) ->
  axios
    method: 'delete'
    url: 'http://localhost:7001/deleteUser'
    dataType: 'json'
    data: {
      sessionToken: "#{params.sessionToken}"
      objectId: "#{params.objectId}"
    }

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error