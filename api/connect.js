import mysql from "mysql"



export const db = mysql.createConnection({
    host:"localhost",
    port:"8800",
    username:"root",
    password:"parth123",
    database:"BuzzLoom"
})