import dd from 'ddeyes'
import {
  localRedux_todos
  localRedux_oneTodo
  localRedux_addTodo
  localRedux_updateTodo
  localRedux_deleteTodo
} from './Localhost/tasks'

eggClientRedux = ->
  do ->
    try

      await localRedux_deleteTodo()
      await localRedux_addTodo()
      await localRedux_todos()
      await localRedux_oneTodo()
      await localRedux_updateTodo()

    catch error
      dd error

export default {
  eggClientRedux
}