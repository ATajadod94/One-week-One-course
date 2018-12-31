const express = require('express')
const path = require('path')
const bodyparser = require('body-parser')
const twit = require('twit')
const app = express()

app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyparser.json())
app.use(bodyparser.urlencoded({extended:false}))

app.get('/tweets/:search',function(req,res){
  console.log(req.params.serach);
  res.json({'status':'Success'})

})

app.listen(3000)


console.log("restart")
