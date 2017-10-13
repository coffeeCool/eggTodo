import axios from 'axios'

export default updateUserInfo = (params) ->
  axios
    method: 'put'
    url: 'http://localhost:7001/updateUserInfo'
    dataType: 'json'
    data: {
      objectId: "#{params.objectId}"
      sessionToken: "#{params.sessionToken}"
      phone: '987654'
    }
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error