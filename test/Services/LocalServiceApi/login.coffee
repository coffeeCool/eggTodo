import axios from  'axios'

export default Local_login = ->
  # 测试通过本地到leanCloud
  axios
    method: 'post'
    url: 'http://localhost:7001/login'
    data: {
      username: '何文涛涛',
      password: '123456'
    }
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error 