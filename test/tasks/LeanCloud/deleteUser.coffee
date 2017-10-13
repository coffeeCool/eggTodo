import login from '../../Services/LeanCloud/login.coffee'
import deleteUser from '../../Services/LeanCloud/deleteUser.coffee'

export default LC_deleteUser = ->
  login()
  .then (data) ->
    data
  
  .then (data) ->
    deleteUser(data) 
    .then (result) ->
      console.log 'leancloud删除用户接口返回：：：'
      , result

  .catch (error) ->
    console.log error