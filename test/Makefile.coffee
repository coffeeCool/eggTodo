import 'shelljs/make'
import dd from 'ddeyes'
import callLeanCloud from './callLeanCloud'
import eggLocalToLc from './eggLocalToLc'
import jsLocalToDb from './jsLocalToDb'
import eggClientRedux from './eggClientRedux.coffee'

target.all = ->
  dd 'ok'

# call leanCloud
target.callLeanCloud = ->
  callLeanCloud.leanCloud()

# egg call local to leanCloud
target.eggLocalToLc = ->
  eggLocalToLc.eggLocalToLc()
  
# json-server call local to todo.json
target.jsLocalToDb = ->
  jsLocalToDb.jsLocalToDb()

# egg client redux
target.eggClientRedux = ->
  eggClientRedux.eggClientRedux()
