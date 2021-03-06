const express = require('express');
const cors = require('cors');
const generateData = require('./generateData.js');
const dbMethods = require('../db/dbMethods.js');

const app = express();
const port = 4030;

app.use(cors());
app.use(express.json());
app.use(express.static('public/dist'));

app.get('/seed', (req, res) => {
  for (let i = 0; i < 1000000; i++) {
    let values = generateData.productsData();
    dbMethods.addProductsToDB(values, (err, result) => {
      if (err) {
        console.log(err);
      } else {
        console.log(result);
      }
    });
  }
  res.end('Thanks');
});

// app.get('/comments', (req, res) => {
//   db.fetchAllComments()
//     .then(output => {
//       output = JSON.stringify(output);
//       res.end(output);
//     })
//     .catch(() => {
//       res.status(400).end();
//     });
// });

// app.get('/comments/:id', (req, res) => {
//   db.fetchSpecificComment(req.params.id)
//     .then(data => {
//       res.send(data);
//     })
//     .catch(err => {
//       res.status(400).end();
//     });
// });

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
