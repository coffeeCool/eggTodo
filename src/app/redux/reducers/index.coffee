import { reduxActions } from 'cfx.redux-actions'
{ handleActions } = reduxActions
import { mergeReduce } from 'cfx.redux'
import constants from '../constants'
import dd from 'ddeyes'

{

  GET_TODO_FROM_LC
  DEL_ALL_STORE_LC
  ADD_TODO_TO_STORE_LC
  UPD_TODO_STORE_FROM_LC

  DEL_ALL_STORE

} = constants.types

initialState =
  todos:[]

todos = handleActions

  GET_TODO_FROM_LC: (state, action) ->
    dd '从leanCloud上Mir数据到Store中'
    

  DEL_ALL_STORE_LC: (state, action) ->
    dd '删除Store和leanCloud上的数据'

  ADD_TODO_TO_STORE_LC: (state, action) ->
    dd 'add todo'

  UPD_TODO_STORE_FROM_LC: (state, action) ->
    dd 'update todo'

  DEL_ALL_STORE: (state, action) ->
    dd 'delete store'
    
, 0

export default mergeReduce {
  todos
}
, initialState
