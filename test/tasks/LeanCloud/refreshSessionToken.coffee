import login from '../../Services/LeanCloud/login.coffee'
import refreshSessionToken from '../../Services/LeanCloud/refreshSessionToken.coffee'

export default LC_refreshSessionToken = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    refreshSessionToken(data)
    .then (result) ->
      console.log 'leancloud用户重置sessionToken接口顺利返回：：：'
      ,result

  .catch (error) ->
    console.log error
