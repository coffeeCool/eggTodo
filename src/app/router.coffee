module.exports = (app) ->
  # 以后要使用RESTful api 编写接口文档
  app.resources 'topics', '/api/v2/topics', 'topics'
  app.post '/signup', app.controller.leanCloud.signup # 用户注册
  app.post '/login', app.controller.leanCloud.login # 用户登录

  app.put '/refreshSessionToken', app.controller.leanCloud.refreshSessionToken # 重置用户的sessionToken
  app.get '/users/me', app.controller.leanCloud.userInfo # 已登录的用户信息返回数据和登录返回一致
  app.post '/verEmail', app.controller.leanCloud.verEmail # 验证用户邮箱
  app.post '/requestPasswordReset', app.controller.leanCloud.resetPassword # 用户更新密码
  app.get '/getUserInfo', app.controller.leanCloud.getUserInfo # 获取用户信息
  app.put '/updateUserInfo', app.controller.leanCloud.updateUserInfo # 更新用户信息
  app.put '/updateUserPassword', app.controller.leanCloud.updateUserPassword # 更新用户密码

  app.get '/getAllUser', app.controller.leanCloud.getAllUser # 获取所有用户信息
  app.delete '/deleteUser', app.controller.leanCloud.deleteUser # 删除用户 ADMIN



  return
