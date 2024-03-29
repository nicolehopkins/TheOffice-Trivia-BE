const express = require('express');
const app = express();
const cors = require('cors');
app.options('*', cors());
const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors);



module.exports = {app};