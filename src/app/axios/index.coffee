import axios from 'axios'

export default AXIOS = (method, sessionToken, uri, data) ->
  axios
    method: method
    headers: 
      'Content-Type': 'application/json'
      'X-LC-Id': 'xY1g1VfwXDcyrMLI0UWUjmKe-gzGzoHsz'
      'X-LC-Key': 'rRvdD9oizDgldNbbIpgFPd1X'
      'X-LC-Session': "#{sessionToken}"
    url: uri
    data: data
    
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    dd error
  