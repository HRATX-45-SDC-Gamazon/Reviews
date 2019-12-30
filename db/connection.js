const mysql = require('mysql');

const connection = mysql.createConnection({
  user: 'root',
  password: 'mongoisbetter',
  database: 'sdcreviews'
});

connection.connect(err => {
  if (err) {
    console.error('Connection failed: Something went wrong');
  }
});

module.exports = connection;
