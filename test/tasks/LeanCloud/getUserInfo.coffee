import login from '../../Services/LeanCloud/login.coffee'
import getUserInfo from '../../Services/LeanCloud/getUserInfo.coffee'

export default LC_getUserInfo = ->
  login()
  .then (data) ->
    data
  
  .then (data) ->
    getUserInfo(data)
    .then (result) ->
      console.log '获取登录成功的单个用户信息返回：：'
      , result

  .catch (error) ->
    console.log error