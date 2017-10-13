import login from '../../Services/LocalServiceApi/login.coffee'
import user_me from '../../Services/LocalServiceApi/user_me.coffee'

export default Local_user_me = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    user_me(data)
    .then (result) ->
      console.log '本地测试leancloud返回单个已登录用户信息:::'
      , result

  .catch (error) ->
    console.log error
    