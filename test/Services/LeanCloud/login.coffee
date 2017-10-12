import configSource from '../../../src/config/config.default.coffee'
import axios from 'axios'

export default login = ->
  axios 
    method: 'post'  
    url: configSource.source.leanCloud.uri+'/login'
    dataType: 'json'
    headers: configSource.source.leanCloud.headers
    data: {
      username: '何文涛涛',
      password: '123456'
    }
  .then (response) ->
    response.data if response.status is 200
  
  .catch (error) ->
    console.log error