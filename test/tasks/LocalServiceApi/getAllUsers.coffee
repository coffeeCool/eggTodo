import getAllUsers from '../../Services/LocalServiceApi/getAllUsers.coffee'

export default Local_getAllUsers = ->
  getAllUsers()
  .then (data) ->
    console.log '本地测试leancloud查找所有用户接口返回:::'
    , data

  .catch (error) ->
    console.log error
    