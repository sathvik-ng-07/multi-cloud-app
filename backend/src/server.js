const express = require('express');
const app = express();
const port = 3000;

app.get('/api/health', (req, res) => res.send('Backend is healthy'));

app.listen(port, () => console.log(`Backend running on port ${port}`));
