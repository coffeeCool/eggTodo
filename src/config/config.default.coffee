module.exports = (appInfo) ->
  config = {}
  config.keys = appInfo.name + '_1490750627161_5967'
  config.middleware = [ 'errorHandler' ]

  config.security =
    csrf:
      enable: false # 默认为 false，当设置为 true 时，将会放过所有 content-type 为 `application/json` 的请求

  config

