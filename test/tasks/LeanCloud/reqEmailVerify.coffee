import login from '../../Services/LeanCloud/login.coffee'
import reqEmailVerify from '../../Services/LeanCloud/reqEmailVerify.coffee'

export default LC_reqEmailVerify = ->
  reqEmailVerify()
  .then (data) ->
    console.log '验证邮箱接口返回：：：'
    , data

  .catch (error) ->
    console.log error
