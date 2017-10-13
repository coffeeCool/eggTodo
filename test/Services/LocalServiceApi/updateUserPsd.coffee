import axios from 'axios'

export default updateUserPsd = (params) ->
  axios 
    method: 'put'
    url: 'http://localhost:7001/updateUserPassword'
    dataType: 'json'
    data: {
      sessionToken: "#{params.sessionToken}"
      objectId: "#{params.objectId}"
      old_password: '123456'
      new_password: '123456'
    }

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error