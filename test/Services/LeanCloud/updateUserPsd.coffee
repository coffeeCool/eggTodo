import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default updateUserPsd = (params)->
  axios
    method: 'put'
    url: configSource.source.leanCloud.uri+"/users/#{params.objectId}/updatePassword"
    dataType: 'json'
    data: {
      old_password: "12345678" # 这个地方的旧密码怎么获取到？？
      new_password: '123456'
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