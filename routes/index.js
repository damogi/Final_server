var express = require('express');
var router = express.Router();
var dataBase=require('./dataBase');
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Final Servidores' });
});

module.exports = router;
