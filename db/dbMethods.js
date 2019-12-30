const connection = require('./connection.js');

const addProductsToDB = (values, callback) => {
  connection.query('INSERT IGNORE INTO products SET ?', values, (err, results) => {
    if (err) {
      callback(err, null);
    } else {
      callback(null, results);
    }
  });
};

const addCommentsToDB = (values, callback) => {
  connection.query(
    `INSERT IGNORE INTO comments (productId, person, personAvatar, title, body, rating, helpfulCount, date, verified) VALUES (${values})`,
    (err, results) => {
      if (err) {
        callback(err, null);
      } else {
        callback(null, results);
      }
    }
  );
};

module.exports = { addProductsToDB, addCommentsToDB };
