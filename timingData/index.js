const express = require('express'); 
const { rootRouter } = require('./src/routes/rootRoute');
const app = express() 

app.listen(8080);

app.use(rootRouter) 
 