import utils from '../config/config.default.coffee'

module.exports = (app) ->

  class TodosService extends app.Service

    constructor: (ctx) ->
      super ctx
      @root = utils.source.leanCloud.uri
      # 返回this用于以后的链式调用
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

    # API
    
