import login from '../../Services/LocalServiceApi/login.coffee'
import reqPsdReset from '../../Services/LocalServiceApi/reqPsdReset.coffee'

export default Local_reqPsdReset = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    reqPsdReset(data)
    .then (result) ->
      console.log '本地测试leancloud 密码重置发送邮件接口返回：：'
      ,result

  .catch (error) ->
    console.log error