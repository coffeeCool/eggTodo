import login from '../../Services/LeanCloud/login.coffee'

export default LC_login = ->
  # 测试的是leanCloud的登录模块
  login()
  .then (data) ->
    console.log 'leancloud登录接口顺利返回:::'
    , data

  .catch (error) ->
    console.log error


