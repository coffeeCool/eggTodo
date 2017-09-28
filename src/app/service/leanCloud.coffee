module.exports = (app) ->

  class LoginService extends app.Service

    constructor: (ctx) ->
      super ctx
      @root = 'https://ijydih2t.api.lncld.net/1.1'
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      opts = {
        timeout: ['30s', '30s']
        dataType: 'json'
        headers: 
          'Content-Type': 'application/json'
          'X-LC-Id': '' # leanCloud账户应用的 id
          'X-LC-Key': '' # leanCloud账户应用的 key
        opts...
      }
      await @ctx.curl url, opts

    login: (params) ->

      result = await @request "/login"
      ,
        data: params

      result.data

    signup: (params) ->
      
      result = await @request "/users"
      ,
        method: 'post'
        data: params
        contentType: 'json'
      
      # console.log 'result--->>', result
      result.data