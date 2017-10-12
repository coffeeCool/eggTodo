import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default updateUserInfo = (params) ->
  axios
    method: 'put'
    url: configSource.source.leanCloud.uri+"/users/#{params.objectId}"
    dataType: 'json'
    data: {
      phone: '18671950000'
    }
    headers: {
      'Content-Type': 'application/json'
      'X-LC-Id': 'IJyDIH2TMnUi39m5Venq7EIc-gzGzoHsz' # leanCloud appID
      'X-LC-Key': 'W6mYomEmftaVOwzxmbcUfBFN' # leanCloud appkEY
      'X-LC-Session': "#{params.sessionToken}" 
    }
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error