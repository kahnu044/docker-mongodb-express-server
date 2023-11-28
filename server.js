const express = require('express');
require("dotenv").config();
const app = express();
const PORT = process.env.SERVER_APP_PORT || 3002;

app.all('/', (req, res) => {
    return res.status(200).json({
        status: 'OK',
        message: "Welcome to express server"
    })
});


app.listen(PORT, () => {
    console.log('Server listening on port', PORT)
})