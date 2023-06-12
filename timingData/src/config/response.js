const  successCode = (res,message, data) => {
    res.status(200).json({
        statusCode: 200 , 
        message: message ,  
        data: data  , 
        date: new Date() 
    })
}
const  errorCode = (res,message, data ) => {
    res.status(404).json({
        statusCode: 400 , 
        message: message ,  
        data: data  , 
        date: new Date() 
    })
}
const  failureCode = (res) => {
    res.status(500).json({
        statusCode: 500 , 
        message: "BackEnd error!" ,  
        date: new Date() 
    })
}

module.exports = {successCode, errorCode, failureCode}