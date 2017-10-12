import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default reqPsdReset = ->
  axios
    method: 'post'
    url: configSource.source.leanCloud.uri+'/requestPasswordReset'
    dataType: 'json'
    headers: configSource.source.leanCloud.headers
    data:{
      email: '97791896@qq.com'
    }
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
