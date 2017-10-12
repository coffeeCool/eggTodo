import axios from 'axios'

export default cnode_demo = ->
  # 测试的是cnode社区的list API
  axios.get 'https://cnodejs.org/api/v1/topics'
  .then (response) ->
    response.data if response.status is 200