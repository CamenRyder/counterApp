const { PrismaClient  } = require('@prisma/client')
 const  { successCode, errorCode ,  failureCode } =  require('../config/response') 


 const prisma =  new  PrismaClient() ;  

 const loginUser = async  (req, res) => {
            try{
                const { username , password } =  req.body ;  
                const data =  { username , password } ; 
               let isData =  await prisma.user.findFirst({where: {username}}) ;
                if(isData) {
                        let isPassword = await prisma.user.findFirst({where: {
                            username,  password  
                        }})
                        if(isPassword) {
                            successCode(res, "login success", isPassword) ;
                        }else errorCode(res, "password wrong?", data) ;  
                }else errorCode(res, "username not already!" ,  data );       
                
            }catch(err) 
            {
                failureCode(res); 
            }
 }
 module.exports = {loginUser}  