import login from '../../Services/LocalServiceApi/login.coffee'
import updateUserPsd from '../../Services/LocalServiceApi/updateUserPsd.coffee'

export default Local_updateUserPsd = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    updateUserPsd(data)
    .then (result) ->
      console.log '本地测试leancloud安全修改用户密码接口返回:::'
      , result

  .catch (error) ->
    console.log error