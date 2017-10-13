import login from '../../Services/LeanCloud/login.coffee'
import updateUserInfo from '../../Services/LeanCloud/updateUserInfo.coffee'

export default LC_updateUserInfo = ->
  login()
  .then (data) ->
    data

  .then (data) ->
    updateUserInfo(data)
    .then (result) ->
      console.log 'leancloud用户更新个人信息接口返回::'
      ,result

  .catch (error) ->
    console.log error