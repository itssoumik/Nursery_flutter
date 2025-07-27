//Import from Packages
const express = require("express");
const mongoose = require("mongoose");

//Init
const app =express();
const PORT =3000;
const DB="mongodb+srv://soumik06:abcd%40123@cluster0.ctjdxlq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"

//Import from packages
const authRouter=require("./routes/auth");
const e = require("express");

//Middlewares
app.use(express.json())
app.use(authRouter)

//Connections
mongoose
    .connect(DB)
    .then(()=>{
        console.log("Connected to DB")
    })
    .catch((e)=>{
        console.log(e)
    });



app.listen(PORT,"0.0.0.0", ()=>{
    console.log(`connected at port ${PORT}`);
});


