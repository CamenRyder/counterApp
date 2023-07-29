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

 const signUp = async  (req, res) => {
    try{
        const { username , password ,  number , dateSignUp , name } =  req.body ;  
        const data =  { username , password ,number , dateSignUp , name  } ; 
       let isData =  await prisma.user.findFirst({where: {username}}) ;
        if(!isData) {
          let createData =   await prisma.user.create({data})  
            successCode(res,'new account',data)     
        }else errorCode(res, "username already!" ,  data );       
        
    }catch(err) 
    {
        failureCode(res); 
    }
}

const forgotPassword = async (req, res) => {
    const { username ,  number } = req.body ;  
try{
        let isData = await prisma.user.findFirst({where: {username}}) ; 
        if(isData ) {
            let isNumber = await prisma.user.findFirst({where: {
                number
            }})  
            if(isNumber) {
                successCode(res,'success request', isNumber) ;  
            }else {
            errorCode(res, 'your phone is correct?', req.body) 
            }
    }else errorCode(res, "username not already!" ,  isData );   
}   catch (err) {
    failureCode(res); 
}

}


 module.exports = {loginUser , signUp , forgotPassword  }  