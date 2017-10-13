import axios from 'axios'

export default user_me = (params) ->
  # console.log 'token', params.sessionToken
  # 测试本地返回单个用户登录信息和登录返回的信息一致
  axios
    method: 'get'
    url: "http://localhost:7001/users/me?sessionToken=#{params.sessionToken}"
    dataType: 'json'

  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error