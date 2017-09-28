module.exports = (app) ->
  app.resources 'topics', '/api/v2/topics', 'topics'
  app.post '/login', app.controller.leanCloud.login
  app.post '/signup', app.controller.leanCloud.signup
  return
