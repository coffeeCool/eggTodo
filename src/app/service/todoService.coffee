import source from '../config/config.default.coffee'
import dd from 'ddeyes'

export default (app) ->

  class todoService extends app.Service

    constructor: (ctx) ->
      super ctx
      @root = source.source.leanCloud.baseUrl
      @

    request: (url, opts) ->
      url = "#{@root}#{url}"
      opts = {
        headers: {
          source.source.leanCloud.headers...
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

    # todos
    todos: (params) ->
      result = await @request "/users"
      ,
        method: 'get'
        data: params
        dataType: 'json'

      result.data

    # one todo
    oneTodo: (params) ->
      result = await @request "/users/#{params.objectId}"
      ,
        data: params
        
      result.data

    # add todo
    addTodo: (params) ->
      result = await @request "/users"
      ,
        method: 'post'
        data: params
        dataType: 'json'
      
      result.data

    # update todo
    updateTodo: (params) ->
      result = await @request "/users/#{params.objectId}"
      ,
        method: 'put'
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
        dataType: 'json'

      result.data

    # delete todo
    deleteTodo: (params) ->
      result = await @request "users/#{params.objectId}"
      ,
        method: 'delete'
        data: params
        headers_extra:
          'X-LC-Session': "#{params.sessionToken}"
        dataType: 'json'

      result.data


