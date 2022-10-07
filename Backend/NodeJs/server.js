const express =require('express')
const bodyParser = require('body-parser')
const mongoose = require('mongoose')
const Route = require('./src/routes/user_createaccount')
const UserModel = require('./src/model/userModel')
const { Router } = require('express')

const app = express()

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:false}))

// Connecting MongoDb 
// Will Provide Routes Only well our Database is connected 
const connect = mongoose.connect('')
                .then(
                    function(){
                        app.get('/',(req,res)=>{
                            UserModel.findOne({userName:"Ritesh Sonawane"},(err,result)=>console.log(result))
                            res.send(" Working well")
                        })
                       
                        app.use('/stelly',Route)
                    
                 
                    }
                )




const Port =3000

app.listen(Port,function(req,res){
    console.log(`Running on Port ${Port}`)
})