import login from '../../Services/LocalServiceApi/login.coffee'
import reqEmailVerify from '../../Services/LocalServiceApi/reqEmailVerify.coffee'

export default Local_reqEmailVerify = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    reqEmailVerify(data)
    .then (result) ->
      console.log '本地测试leancloud用户验证邮箱接口返回,返回 {} 代表成功：：： '
      ,result

  .catch (error) ->
    console.log error