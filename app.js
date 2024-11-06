// Import the Express library
const express = require('express');
const app = express();

// Define the port to run the server
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

// Start the server and listen on the specified port
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
