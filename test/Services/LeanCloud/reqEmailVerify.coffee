import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default reqEmailVerify =  ->
  axios
    method: 'post'
    url: configSource.source.leanCloud.uri+'/requestEmailVerify'
    dataType: 'json'
    headers: configSource.source.leanCloud.headers
    data: {
      email: 'hewentaowx@gmail.com'
    }

  .then (response) ->
    response.data if response.status is 200
  
  .catch (error) ->
    console.log error
