const faker = require('faker');
const fs = require('graceful-fs');

const productsData = num => {
  const average = Math.ceil(Math.random() * 5);
  return {
    id: num,
    name: faker.commerce.productName(),
    category: faker.commerce.department(),
    average
  };
};

const commentsData = pid => {
  const rating = Math.floor(Math.random() * 5) + 1;
  const date = new Date();
  return {
    productId: pid,
    person: `${faker.name.firstName()} ${faker.name.lastName()}`,
    personAvatar: faker.random.image(),
    title: faker.lorem.sentence(),
    body: faker.lorem.sentences(),
    rating,
    helpfulCount: rating,
    date,
    verified: 1
  };
};

const commafy = obj => {
  let str = '';
  for (let key in obj) {
    str += obj[key];
    if (key !== 'verified') {
      str += ',';
    }
  }
  str += '\n';
  return str;
};

const lastNumAdded = () => {
  let data = fs.readFileSync('comments.csv', 'utf8');
  let lines = data.trim().split('\n');
  let lastLine = lines.slice(-1)[0];
  let fields = lastLine.split(',');
  let num = Number(fields[0]);
  return num;
};

const createCSV = num => {
  let writeStream = fs.createWriteStream('comments2.csv', { flags: 'a' });
  for (let i = num; i < num + 1e6; i++) {
    let rand = Math.ceil(Math.random() * 5);
    for (let j = 0; j < rand; j++) {
      writeStream.write(commafy(commentsData(i)));
    }
  }
  // fs.appendFile('fakedata.csv', commafy(productsData()), err => {
  //   if (err) {
  //     console.log(err);
  //   }
  // });
};

// createCSV(1 + 9e6);

module.exports = { productsData, commentsData };
