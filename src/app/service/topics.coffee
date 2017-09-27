module.exports = (app) ->

  class TopicService extends app.Service
    constructor: (ctx) ->
      super(ctx)
      @root = 'https://cnodejs.org/api/v1'

    request: (url, opts) ->
      url = "#{@root}#{url}"
      opts = {
        timeout: ['30s', '30s']
        dataType: 'json'
        opts...
      }
      await @ctx.curl url, opts

    show: (params) ->
      result = await @request "/topic/#{params.id}"
      ,
      data:
        mdrender: params.mdrender
        accesstoken: params.accesstoken
      @checkSuccess result

      result.data.data

    list: (params) ->
      result = await @request "/topics"
      ,
      data:params

      @checkSuccess result
      result.data.data

    create: (params) ->
      result = await @request "/topics"
      ,
      method: 'post'
      data: params
      contentType: 'json'

      @checkSuccess result
      result.data.topic_id

    update: (params) ->
      result = await @request "/topics/update"
      ,
      method: 'post'
      data: params
      contentType: 'json'

      @checkSuccess result

    checkSuccess: (result) ->
      if result.status isnt 200
        errorMsg = 
          if result.data and result.data.error_msg 
          then result.data.error_msg 
          else 'unknown error'
      if not result.data.success
        @ctx.throw 500
        , 'remote response error'
        , data: result.data

  TopicService

