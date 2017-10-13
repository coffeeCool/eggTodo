import login from '../../Services/LocalServiceApi/login.coffee'
import deleteUser from '../../Services/LocalServiceApi/deleteUser.coffee'

export default Local_deleteUser = ->
  login()
  .then (data) ->
    data
  
  .then (data) ->
    deleteUser(data)
    .then (result) ->
      console.log '本地测试leancloud删除用户接口返回:::'
      , result

  .catch (error) ->
    console.log error