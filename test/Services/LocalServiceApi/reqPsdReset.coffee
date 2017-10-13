import axios from 'axios'

export default reqPsdReset = (params) ->
  axios
    method: 'post'
    url: 'http://localhost:7001/requestPasswordReset'
    data: {
      email: "#{params.email}"
    }
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error