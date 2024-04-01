import mysql from "mysql"

export const db = mysql.createConnection({
    hostname:"localhost",
    port:"8800",
    username:"root",
    password:"parth123",
    database:"BuzzLoom"
})