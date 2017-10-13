import getAllUsers from '../../Services/LeanCloud/getAllUsers.coffee'

export default LC_getAllUsers = ->
  getAllUsers()
  
  .then (data) ->
    console.log 'leancloud获取所有用户信息接口返回：：：'
    , data

  .catch (error) ->
    console.log error