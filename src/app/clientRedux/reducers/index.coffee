import { reduxActions } from 'cfx.redux-actions'
{ handleActions } = reduxActions
import { mergeReduce } from 'cfx.redux'
import constants from '../constants'
import dd from 'ddeyes'

{

  GET_TODO_FROM_LOCAL
  GET_ONETODO_FROM_LOCAL
  ADD_TODO_FROM_LOCAL
  UPD_TODO_FROM_LOCAL
  DEL_TODO_FROM_LOCAL

} = constants.types

initialState =
  todos:[]

todos = handleActions

  GET_TODO_FROM_LOCAL: (state, action) ->
    [
      action.payload.todos.results...
    ]

  GET_ONETODO_FROM_LOCAL: (state, action) ->
    [
      action.payload
    ]
  
  ADD_TODO_FROM_LOCAL: (state, action) ->
    [
      action.payload
    ]
  
  UPD_TODO_FROM_LOCAL: (state, action) ->
    [
      action.payload
    ]
  
  DEL_TODO_FROM_LOCAL: (state, action) ->
    []
      
, 0

export default mergeReduce {
  todos
}
, initialState
