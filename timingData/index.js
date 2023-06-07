const express = require('express') 
const app = express() 
app.use(express.json());

app.listen(8080);


app.get("/demo/:id", (req, res) => {
    let {id} =  req.params ; 
    res.send(id);
})

app.get("/demo/hello", (req, res) => {
    res.send("hello")
})


