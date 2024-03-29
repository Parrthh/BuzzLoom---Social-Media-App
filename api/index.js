import Express from "express";
const app = Express();

app.get('/', (req, res) => {
    res.send('Hello, World! This is a simple example of a route.');
});

app.listen(8800, () => {
    console.log("API server is running");
});