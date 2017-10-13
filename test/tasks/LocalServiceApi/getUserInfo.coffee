import login from '../../Services/LocalServiceApi/login.coffee'
import getUserInfo  from '../../Services/LocalServiceApi/getUserInfo.coffee'

export default Local_getUserInfo = ->
  login()
  .then (data) ->
    data
  
  .then (data) ->
    getUserInfo(data) 
    .then (result) ->
      console.log '本地测试leancloud通过objectId获取用户信息接口返回:::'
      , result

  .catch (error) ->
    console.log error