import reqPsdReset from '../../Services/LeanCloud/reqPsdReset.coffee'

export default LC_reqPsdReset = ->
  reqPsdReset()
  .then (data) ->
    console.log '用户重置密码邮件发送成功::'
    , data

  .catch (error) ->
    console.log error