module.exports = (app) ->

  class LeanCloudController extends app.Controller

    constructor: (ctx) ->

      super ctx

      @

    login: ->
      { ctx } = @

      # console.log ctx.request.body
      ctx.body = await ctx.service.leanCloud.login ctx.request.body
      

    
    signup: ->
      { ctx } = @

      # console.log ctx.request.body
      ctx.body = await ctx.service.leanCloud.signup ctx.request.body

  return LeanCloudController