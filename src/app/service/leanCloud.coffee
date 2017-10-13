import utils from '../config/config.default.coffee'

module.exports = (app) ->

  class LoginService extends app.Service

    constructor: (ctx) ->
      super ctx
      @root = utils.source.leanCloud.uri
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      
      opts = {
        headers: {
          utils.source.leanCloud.headers...
          (
            do ->
              if opts?.headers_extra?
              then opts.headers_extra
              else {}
          )...
        }
        
        opts...
      }
      await @ctx.curl url, opts

    # 用户注册
    signup: (params) ->
      
      result = await @request "/users"
      ,
        method: 'post'
        data: params
        dataType: 'json'
      
      result.data

    # 用户登录
    login: (params) ->
      
      result = await @request "/login"
      ,
        method: 'post'
        data: params
        dataType: 'json'
        
      result.data

    # 返回登录用户信息（单个）
    userInfo: (params) ->
      
      result = await @request "/users/me"
      ,
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
      
      result.data
    
    # 重置用户sessionToken
    refreshSessionToken: (params) ->

      result = await @request "/users/#{params.objectId}/refreshSessionToken"
      ,
        method: 'put'
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
        dataType: 'json'

      result.data

    # 验证用户邮箱 
    verEmail: (params) ->

      result = await @request "/requestEmailVerify"
      ,
        method: 'post'
        data: params
        dataType: 'json'
      
      result.data

    # 用户重置密码
    resetPassword: (params) ->

      result = await @request "/requestPasswordReset"
      ,
        method: 'post'
        data: params
        dataType: 'json'

      result.data

    # 获取用户
    getUserInfo: (params) ->

      result = await @request "/users/#{params.objectId}"
      ,
        data: params
        
      result.data

    # 更新用户 
    updateUserInfo: (params) ->

      result = await @request "/users/#{params.objectId}"
      ,
        method: 'put'
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
        dataType: 'json'

      result.data

    # 用户更新密码
    updateUserPassword: (params) ->

      result = await @request "/users/#{params.objectId}/updatePassword"
      ,
        method: 'put'
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
        dataType: 'json'
      
      result.data

    # 获取所有用户
    getAllUser: (params) ->

      result = await @request "/users"
      ,
        method: 'get'
        data: params
        dataType: 'json'

      result.data

    # 删除用户 NO?
    deleteUser: (params) ->
      console.log 'params:::',params

      result = await @request "users/#{params.objectId}"
      ,
        method: 'delete'
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
        dataType: 'json'

      result.data


   
    
