module.exports = (app) ->
  app.resources 'topics', '/api/v2/topics', 'topics'
  app.post '/signup', app.controller.leanCloud.signup # 用户注册
  app.post '/login', app.controller.leanCloud.login # 用户登录
  app.get '/users/me', app.controller.leanCloud.userInfo # 已登录的用户信息
  app.put '/refreshSessionToken', app.controller.leanCloud.refreshSessionToken # 重置用户的sessionToken
  app.post '/verEmail', app.controller.leanCloud.verEmail # 验证用户邮箱
  return
