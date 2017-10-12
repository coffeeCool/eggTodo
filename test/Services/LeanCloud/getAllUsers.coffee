import configSource from '../../../src/app/config/config.default.coffee'
import axios from 'axios'

export default getAllUsers = ->
  axios
    url: configSource.source.leanCloud.uri+"/users"
    headers: configSource.source.leanCloud.headers
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
