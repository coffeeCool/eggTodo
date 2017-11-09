import dd from 'ddeyes'
import { createStore } from 'cfx.redux'
import { SagaMiddleware } from 'cfx.redux-saga'
import reducers from '../src/app/serviceRedux/reducers'
import sagas from '../src/app/serviceRedux/sagas'
import todoApp from '../src/app/serviceRedux/index'


export default (app) ->
  app.beforeStart ->
    SagaMW = new SagaMiddleware()
    store = createStore
      todoApp: reducers
    , [
      SagaMW.getMidleware()
    ]
    SagaMW.runSagas sagas
    app.store = store
