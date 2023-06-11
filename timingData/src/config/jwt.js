

const jwt = require('jsonwebtoken') 


const createToken = (data) => {
    const token = jwt.sign({data: data},"node", {algorithm: 'HS256', expiresIn: '1d'}) 
    return token ;
}

const checkToken = (token) => {
    const verification =  jwt.verify(token, "node") ;
    return verification ;  
}

const decryptToken = (token) => {
    const data = jwt.decode(token) ;
    return data; 
}

module.exports = {createToken, checkToken, decryptToken} 