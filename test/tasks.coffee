import 'shelljs/make'
# import dd from 'ddeyes'
import cnode_demo from './tasks/Cnode/cnode_demo.coffee'
import LC_login from './tasks/LeanCloud/login.coffee'
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
import Local_login from './tasks/LocalServiceApi/login.coffee'
import Local_signup from './tasks/LocalServiceApi/signup.coffee'
import Local_user_me from './tasks/LocalServiceApi/user_me.coffee'
import Local_refreshSessionToken from './tasks/LocalServiceApi/refreshSessionToken.coffee'
import Local_reqEmailVerify from './tasks/LocalServiceApi/reqEmailVerify.coffee'
import Local_reqPsdReset from './tasks/LocalServiceApi/reqPsdReset.coffee'
import Local_getUserInfo from './tasks/LocalServiceApi/getUserInfo.coffee'
import Local_updateUserInfo from './tasks/LocalServiceApi/updateUserInfo.coffee'
import Local_updateUserPsd from './tasks/LocalServiceApi/updateUserPsd.coffee'
import Local_getAllUsers from './tasks/LocalServiceApi/getAllUsers.coffee'
import Local_deleteUser from './tasks/LocalServiceApi/deleteUser.coffee'

target.all = ->
  cnode_demo()
  LC_login()
  Local_login()

target.cnode_demo = ->
  cnode_demo()

# 直接测试leancloud的接口
target.LC_login = ->
  LC_login()

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


# 通过本地来测试leancloud的三方接口
target.Local_login = ->
  Local_login()

target.Local_signup = ->
  Local_signup()

target.Local_user_me = ->
  Local_user_me()

target.Local_refreshSessionToken = ->
  Local_refreshSessionToken()

target.Local_reqEmailVerify = ->
  Local_reqEmailVerify()

target.Local_reqPsdReset = ->
  Local_reqPsdReset()

target.Local_getUserInfo = ->
  Local_getUserInfo()

target.Local_updateUserInfo = ->
  Local_updateUserInfo()

target.Local_updateUserPsd = ->
  Local_updateUserPsd()

target.Local_getAllUsers = ->
  Local_getAllUsers()

target.Local_deleteUser = ->
  Local_deleteUser()