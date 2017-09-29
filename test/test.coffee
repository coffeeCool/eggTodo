import dd from 'ddeyes'
import axios from 'axios'
import utils from '../src/app/config/config.default.coffee'


# 测试的是cnode社区的list API
axios.get 'https://cnodejs.org/api/v1/topics'
  .then (response) ->
    if response.status is 200 
      console.log '接口返回成功::::>>>>>'
      ,response.data.data[0].title
  .catch (error) ->
    console.log error


# 测试的是leanCloud的三方 RESTful API
axios 
  method: 'post'  
  url: utils.source.leanCloud.uri+'/login'
  dataType: 'json'
  headers: utils.source.leanCloud.headers
  data: {
    username: '何文涛涛',
    password: '123456'
  }
.then (response) ->
  if response.status is 200
    console.log 'leanCloud用户登录测试OK'
    , response.data

.catch (error) ->
  console.log error
