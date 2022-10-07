// Creating UserModel 
/* Required 
1. FullName
2. Addr
3. Email
4. Password for login purpose 
*/ 


const mongoose = require ("mongoose")

const userSchema = new mongoose.Schema({

    userName:{type:String},
    addr:{type:String},
    email:{type:String},
    password:{type:String},
    createdOn:{type:Date,default:Date.now}

})

const UserModel = mongoose.model("User-Create",userSchema)

module.exports=UserModel