import mysql from "mysql"

export const db = mysql.createConnection({
    hostname:"",
    port:"",
    username:"",
    password:"",
    database:"BuzzLoom"
})