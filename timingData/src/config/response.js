const  successCode = (res,message, data) => {
    res.status(200).json({
        statusCode: 200 , 
        message: message ,  
        data: data  , 
        date: Date.now() 
    })
}
const  errorCode = (res,message) => {
    res.status(400).json({
        statusCode: 400 , 
        message: message ,  
        data: null  , 
        date: Date.now() 
    })
}
const  failureCode = (res) => {
    res.status(500).json({
        statusCode: 500 , 
        message: "BackEnd error!" ,  
        date: Date.now() 
    })
}

module.exports = {successCode, errorCode, failureCode}