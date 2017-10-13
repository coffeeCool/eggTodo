import axios from 'axios'

export default reqEmailVerify = (params) ->
  axios
    method: 'post'
    url: 'http://localhost:7001/verEmail'
    data: {
      email: "#{params.email}"
    }
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error