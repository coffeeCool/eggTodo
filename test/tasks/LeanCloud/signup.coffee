import signup from '../../Services/LeanCloud/signup.coffee'

export default LC_signup = ->
  signup()
  .then (data) ->
    console.log 'leancloud登录接口顺利返回：：：'
    , data.data
    data.data

  .catch (error) ->
    console.log error