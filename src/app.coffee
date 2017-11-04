import dd from 'ddeyes'
import { createStore } from 'cfx.redux'
import reducers from '../src/app/reducers'

export default (app) ->
  app.beforeStart ->
    store = createStore
      todoApp: reducers
    app.store = store
