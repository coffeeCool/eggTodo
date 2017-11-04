import { reduxActions } from 'cfx.redux-actions'
{ handleActions } = reduxActions
import { mergeReduce } from 'cfx.redux'
import constants from '../constants'
import dd from 'ddeyes'

{
  ADD_TODO
  UPDATE_TODO
  DELETE_TODO
} = constants.types

initialState =
  todos:[]

todos = handleActions

  ADD_TODO: (state, action) ->
    dd '进行ADD_TODO'
    dd action
    [
      state...
      action.payload
    ]
       
  UPDATE_TODO: (state, action) ->
    dd '正在执行UPDATE_TODO操作'
    dd action
    state.reduce (r, c) -> 
      unless c.name is '张飞'
        [
          r...
          c
        ]
      else
        n = {
          c...
          name: action.payload.name
        }
        [
          r...
          n
        ]
    , []
  
  DELETE_TODO: (state, action) ->
    dd '正在执行DELETE_TODO操作'
    dd action
    []
    
, 0

export default mergeReduce {
  todos
}
, initialState
