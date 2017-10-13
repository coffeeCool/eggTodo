import axios from 'axios'

export default signup = ->
  # 测试本地用户注册接口
  axios
    method: 'post'
    url: 'http://localhost:7001/signup'
    data: {
      username: '赵胜'
      password: '123456'
      phone: '123456'
    }
  
  .then (response) ->
    response.data if response.status is 200

  .catch (error) ->
    console.log error
