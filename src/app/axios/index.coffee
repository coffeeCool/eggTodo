import axios from 'axios'

export default AXIOS = (method, sessionToken, action, data) ->
  axios
    method: method
    headers: 
      'Content-Type': 'application/json'
      'X-LC-Id': 'xY1g1VfwXDcyrMLI0UWUjmKe-gzGzoHsz'
      'X-LC-Key': 'rRvdD9oizDgldNbbIpgFPd1X'
      'X-LC-Session': "#{sessionToken}"
    url: 'https://xy1g1vfw.api.lncld.net/1.1'+action
    data: data
    
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    dd error
  