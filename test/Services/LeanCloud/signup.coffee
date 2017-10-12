import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default signup = ->
  axios
    method: 'post'
    url: configSource.source.leanCloud.uri+'/users'
    dataType: 'json'
    headers: configSource.source.leanCloud.headers
    data: {
      username: '李四'
      password: '123456'
      phone: '123123'
      email: 'hewentaowx@gmail.com'
    }
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
      