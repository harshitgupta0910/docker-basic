const express = require('express');

const app = express();
const port = process.env.port||3000;

app.get('/', (req, res) => {
  res.json({message:" Hello World from server!"});
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
