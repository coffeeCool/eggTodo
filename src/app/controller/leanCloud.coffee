module.exports = (app) ->

  class LeanCloudController extends app.Controller

    constructor: (ctx) ->

      super ctx

      @

    # 用户注册
    signup: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.signup ctx.request.body


    # 用户登录
    login: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.login ctx.request.body
      # 刷新用户的 csrf token
      ctx.rotateCsrfSecret()
      # 也可以用下面的方式
      # ctx.body = await ctx.service.leanCloud.login
      #   username: '何文涛涛'
      #   password: '123456'
      
  
    # 通过sessionToken返回用户的信息
    userInfo: ->
      { ctx } = @
      
      ctx.body = await ctx.service.leanCloud.userInfo ctx.request.query


    # 重置用户的sessionToken
    refreshSessionToken: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.refreshSessionToken ctx.request.body
        

    # 请求验证Email
    verEmail: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.verEmail ctx.request.body

    # 请求重置密码
    resetPassword: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.resetPassword ctx.request.body

    # 获取用户
    getUserInfo: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.getUserInfo ctx.request.query

    # 更新用户
    updateUserInfo: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.updateUserInfo ctx.request.body

    # 修改用户密码
    updateUserPassword: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.updateUserPassword ctx.request.body
      
    # 获取所有用户信息
    getAllUser: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.getAllUser ctx.request.query

    # 删除用户
    deleteUser: ->
      { ctx } = @

      ctx.body = await ctx.service.leanCloud.deleteUser ctx.request.body

  return LeanCloudController