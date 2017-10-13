import login from '../../Services/LocalServiceApi/login.coffee'
import updateUserInfo from '../../Services/LocalServiceApi/updateUserInfo.coffee'

export default Local_updateUserInfo = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    updateUserInfo(data)
    .then (result) ->
      console.log '本地测试leancloud更新用户资料接口返回:::'
      , result

  .catch (error) ->
    console.log error