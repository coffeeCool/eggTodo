module.exports = (app) ->

  class TopicsController extends app.Controller

    constructor: (ctx) ->
      super ctx

      @createRule =
        accesstoken: 'string'
        title: 'string'
        tab: 
          type: 'enum'
          values: [ 'ask', 'share', 'job' ]
          required: false 
        content: 'string'

      @

    show: ->
      { ctx } = @

      ctx.body = await ctx.service.topics.show
        id: ctx.params.id
        mdrender: ctx.query.mdrender isnt 'false'
        accesstoken: ctx.query.accesstoken or ''

    index: ->
      { ctx } = @

      ctx.validate
        page:
          format: /\d+/
          required: false
        tab:
          type: 'enum'
          values: ['ask', 'share', 'job', 'good']
          required: false
        limit:
          format: /\d+/
          required: false
      , ctx.query

      ctx.body = await ctx.service.topics.list
        page: ctx.query.page
        tab: ctx.query.tab
        limit: ctx.query.limit
        mdrender: ctx.query.mdrender isnt 'false'

    create: ->
      { ctx } = @
      ctx.validate @createRule

      id = await ctx.service.topics.create ctx.request.body
      ctx.body
        topic_id: id
      ctx.status = 201

    update: ->
      { ctx } = @
      id = ctx.params.id

      ctx.validate @createRule
      await ctx.service.topics.update {id...} , cxt.request.body
      ctx.status = 204

  return TopicsController
        

