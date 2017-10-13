import signup from '../../Services/LocalServiceApi/signup.coffee'

export default Local_signup = ->
  signup()
  .then (data) ->
    console.log '本地测试leancloud注册接口返回:::'
    , data

  .catch (error) ->
    console.log  error