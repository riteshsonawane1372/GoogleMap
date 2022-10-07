// Creating Account 
// The route Section is divided into differnet route so that the code is more clear 

const Route = require('express').Router()
const bodyParser=require('body-parser')
const bcrypt = require('bcrypt')
const UserModel = require('../model/userModel')


Route.post("/create-account",async (req,res)=> {
    
    var userData = req.body
    var password = req.body.password

    await bcrypt.hash(password,10,function(err,hash){

        if(err){
            res.json({
                success:false,
                Error :"Try Another Password",
                code :403
            })
            return
        }
        password =hash    

    })
    userData.password= password

    const newUser = new UserModel(userData)
    newUser.save(function(err){
        if(err){
            res.json({
                success:false,
                Error:"Unable to save User",
                code:400
            })
            return 
        }

        // Otherwise the user is saved 
        res.json({
            success:true,
            code:200
        })
    })


    
})

// Login Route 

Route.post("/login", async function(req,res){
   
    UserModel.findOne({email:req.body.userName,password:req.body.password},
        function(err,user){
            if(err){
                res.json({
                    success:false,
                    msg:"Try agin"
                })
            }
            if(!user){
                res.json({
                    success:false,
                    msg:`No user with ${req.body.email}`
                })
            }
            // We found the User in DB
            else{
                res.json({
                    success:true,
                    msg:"Welcome back"
                })
            }  
        }
        )
})






module.exports=Route
