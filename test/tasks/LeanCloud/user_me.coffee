import login from '../../Services/LeanCloud/login.coffee'
import user_me from '../../Services/LeanCloud/user_me.coffee'

export default LC_user_me = ->
  # 测试的是leancloud的 基于登录之后返回用户信息的接口
  login()
  .then (data) ->
    data

  .then (data) ->
    user_me(data)
    .then (result) ->
      console.log '返回已登录用户信息接口返回：：：'
      , result
  
  .catch (error) ->
    console.log error
