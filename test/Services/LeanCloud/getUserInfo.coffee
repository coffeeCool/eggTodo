import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default getUserInfo = (params)->
  axios
    method: 'get'
    url: configSource.source.leanCloud.uri+"/users/#{params.objectId}"
    dataType: 'json'
    headers: configSource.source.leanCloud.headers
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
