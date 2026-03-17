const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3002; // WHY: 3000 = Accelerate Robotics, 3001 = Pokemon tracker

app.use(express.static(path.join(__dirname)));

app.listen(PORT, () => {
    console.log(`[eric-race] Personal site running at http://localhost:${PORT}`);
});
