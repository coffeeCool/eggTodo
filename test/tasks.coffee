import 'shelljs/make'
import dd from 'ddeyes'
import cnode_demo from './tasks/Cnode/cnode_demo.coffee'
import LC_login from './tasks/LeanCloud/login.coffee'
import Local_login from './tasks/LocalServiceApi/login.coffee'

target.all = ->
  dd 'Hello World!!!'

target.cnode_demo = ->
  cnode_demo()

target.LC_login = ->
  LC_login()

target.Local_login = ->
  Local_login()
