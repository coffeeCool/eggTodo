import 'shelljs/make'
# import dd from 'ddeyes'
import cnode_demo from './tasks/Cnode/cnode_demo.coffee'
import LC_login from './tasks/LeanCloud/login.coffee'
import Local_login from './tasks/LocalServiceApi/login.coffee'
import LC_signup from './tasks/LeanCloud/signup.coffee'
import LC_user_me from './tasks/LeanCloud/user_me.coffee'
import LC_refreshSessionToken from './tasks/LeanCloud/refreshSessionToken.coffee'
import LC_reqEmailVerify from './tasks/LeanCloud/reqEmailVerify.coffee'
import LC_reqPsdReset from './tasks/LeanCloud/reqPsdReset.coffee'
import LC_getUserInfo from './tasks/LeanCloud/getUserInfo.coffee'
import LC_updateUserInfo from './tasks/LeanCloud/updateUserInfo.coffee'
import LC_updateUserPsd from './tasks/LeanCloud/updateUserPsd.coffee'
import LC_getAllUsers from './tasks/LeanCloud/getAllUsers.coffee'
import LC_deleteUser from './tasks/LeanCloud/deleteUser.coffee'

target.all = ->
  cnode_demo()
  LC_login()
  Local_login()

target.cnode_demo = ->
  cnode_demo()

target.LC_login = ->
  LC_login()

target.Local_login = ->
  Local_login()

target.LC_user_me = ->
  LC_user_me()

target.LC_refreshSessionToken = ->
  LC_refreshSessionToken()

target.LC_reqEmailVerify = ->
  LC_reqEmailVerify()

target.LC_reqPsdReset = ->
  LC_reqPsdReset()

target.LC_getUserInfo = ->
  LC_getUserInfo()

target.LC_updateUserInfo = ->
  LC_updateUserInfo()

target.LC_updateUserPsd = ->
  LC_updateUserPsd()

target.LC_getAllUsers = ->
  LC_getAllUsers()

target.LC_deleteUser = ->
  LC_deleteUser()