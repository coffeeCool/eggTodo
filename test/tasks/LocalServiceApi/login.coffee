import login from '../../Services/LocalServiceApi/login.coffee'

export default Local_login = ->
  login()
  .then (data) ->
    console.log '本地login接口顺利返回:::'
    , data
    
  .catch (error) ->
    console.log error