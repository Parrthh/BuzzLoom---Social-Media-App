import Express, { application } from "express";
const app = Express();

import userRoutes from "./routes/users.js"
import authRoutes from "./routes/auth.js"
import likesRoutes from "./routes/likes.js"
import commentRoutes from "./routes/comments.js"
import postRoutes from "./routes/posts.js"

// middlewares
app.use(Express.json()); // parse incoming requests with JSON payloads

// To check if we can get this message on our localhost
// app.get('/', (req, res) => {
//     res.send('Hello, World! This is a simple example of a route.');
// });



app.use("/api/users", userRoutes); // /api/users/ -> users.js
app.use("/api/auth", authRoutes);
app.use("/api/likes", likesRoutes);
app.use("/api/comments", commentRoutes);
app.use("/api/posts", postRoutes);

app.listen(8800, () => {
    console.log("API server is running");
});

