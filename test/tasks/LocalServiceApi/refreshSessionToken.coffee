import login from '../../Services/LocalServiceApi/login.coffee'
import refreshSessionToken from '../../Services/LocalServiceApi/refreshSessionToken.coffee'

export default Local_refreshSessionToken = ->
  login()
  .then (data) ->
    data
  
  .then (data) ->
    refreshSessionToken(data) 
    .then (result) ->
      console.log '本地测试leancloud用户重置sessionToken接口返回：：：'
      , result


  .catch (error) ->
    console.log error