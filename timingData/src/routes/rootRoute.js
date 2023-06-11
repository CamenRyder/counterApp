const express =  require('express'); 
const { userRouter } = require('./userRoute');
const rootRouter = express.Router() ;  
rootRouter.use(express.json())


rootRouter.use("/user",userRouter) 

module.exports = {rootRouter}  