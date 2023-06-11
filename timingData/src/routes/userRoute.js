const express = require('express')
const {loginUser} = require('../controller/userController')
const userRouter = express.Router() ; 
userRouter.use(express.json()) 

userRouter.get("/loginUser", loginUser)


module.exports = {userRouter} ;   

