import topics from '../../Services/Cnode/topics'

export default cnode_demo = ->
  # 测试的是cnode社区的list API
  topics()
  .then (data) ->
    console.log '接口返回成功::::>>>>>'
    , data.data[1].title
    data.data[1].title

  # 后续情况是使用到上面返回的接口作为形参
  # .then (topicsTitle) ->
  #   xxx topicsTitle # xxx other Api

  # .then () ->
  #   xxx    

  .catch (error) ->
    console.log error
