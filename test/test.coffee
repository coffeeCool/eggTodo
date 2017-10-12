import dd from 'ddeyes'
import axios from 'axios'
import configSource from '../src/app/config/config.default.coffee'

axios.defaults.withCredentials = true


# 测试的是cnode社区的list API
# axios.get 'https://cnodejs.org/api/v1/topics'
#   .then (response) ->
#     if response.status is 200 
#       console.log '接口返回成功::::>>>>>'
#       ,response.data.data[1].title
#   .catch (error) ->
#     console.log error


# 测试的是leanCloud的三方 RESTful API
# axios 
#   method: 'post'  
#   url: configSource.source.leanCloud.uri+'/login'
#   dataType: 'json'
#   headers: configSource.source.leanCloud.headers
#   data: {
#     username: '何文涛涛',
#     password: '123456'
#   }
# .then (response) ->
#   if response.status is 200
#     console.log 'leanCloud用户登录测试OK'
#     , response.data

# .catch (error) ->
#   console.log error

# 测试通过本地到leanCloud
# axios
#   # withCredentials:true
#   method: 'post'
#   url: 'http://localhost:7001/login'
#   # dataType: 'json'
#   # headers: configSource.source.leanCloud.headers
#   data: {
#     username: '何文涛涛',
#     password: '123456'
#   }
#   xsrfHeaderName: 'X-XSRF-TOKEN'
# .then (response) ->
#   # if response.status is 200
#   #   console.log '本地到leanCloud成功'
#   #   , response.data

# .catch (error) ->
#   console.log error 



# 测试egg框架的csrf安全机制
# axios
#   method: 'post'
#   url: configSource.source.leanCloud.uri+'/login'
#   dataType: 'json'
#   headers: configSource.source.leanCloud.headers
#   data: {
#     username: '陈欢'
#     password: '123456'
#   }
# .then (response) ->
#   if response.status is 200
#     console.log '安全机制测试返回数据:::>>>'
#     , response.data