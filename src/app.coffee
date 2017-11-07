import dd from 'ddeyes'
import { createStore } from 'cfx.redux'
import { SagaMiddleware } from 'cfx.redux-saga'
import reducers from '../src/app/redux/reducers'
import sagas from '../src/app/redux/sagas'
import todoApp from '../src/app/redux/index'


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
