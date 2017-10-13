import login from '../../Services/LeanCloud/login.coffee'
import updateUserPsd from '../../Services/LeanCloud/updateUserPsd.coffee'

export default LC_updateUserPsd = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    updateUserPsd(data)
    .then (result) ->
      console.log 'leancloud用户更新密码接口返回：：：'
      , result

  .catch (error) ->
    console.log error