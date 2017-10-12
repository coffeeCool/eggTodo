import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default user_me = (params) ->
  axios
    method: 'get'
    url: configSource.source.leanCloud.uri+'/users/me'
    dataType: 'json'
    headers: {
      'Content-Type': 'application/json'
      'X-LC-Id': 'IJyDIH2TMnUi39m5Venq7EIc-gzGzoHsz' # leanCloud appID
      'X-LC-Key': 'W6mYomEmftaVOwzxmbcUfBFN' # leanCloud appkEY
      'X-LC-Session': "#{params.sessionToken}"  # khnnt8osbnd0t1jvgxdhh4w4h
    }
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
