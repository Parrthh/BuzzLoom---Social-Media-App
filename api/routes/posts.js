import express from "express";
import {  } from '../controllers/post.js';


const router = express.Router()

// As it is our router file, we dont usually write our controller codes here, we have a separate  controllers folder for that. 
// So a separate function is made for the (req,res) part in the controller/user.js

// router.get("/test", (req, res) => {
//     res.send("it works!")
// })

router.get("", );

export default router