import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default refreshSessionToken = (params)->
  # 测试的是leancloud用户重置sessionToken的接口
  axios
    method: 'put'
    url: configSource.source.leanCloud.uri+"/users/#{params.objectId}/refreshSessionToken"
    dataType: 'json'
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


