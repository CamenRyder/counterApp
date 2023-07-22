const express = require('express')
const {loginUser , signUp , forgotPassword } = require('../controller/userController')
const userRouter = express.Router() ; 
userRouter.use(express.json()) 

userRouter.post("/loginUser", loginUser)
userRouter.post("/forgotPassword", forgotPassword)
userRouter.get("/signUp", signUp)


module.exports = {userRouter} ;   

