var express = require('express');
var router = express.Router();
var databaseModule=require('./dataBase.js');
var bodyParser = require('body-parser');

router.get('/:carId/:playerId', function(req,res){
  var playerId = req.params.playerId;
  var carId = req.params.carId;
  var query= "";

  query='Select "price" From "cars" Where "card_id" = {(0)};';
  query = query.replace('{0}',carId);

  try {
    databaseModule.execute(query, function(result){
      res.send(JSON.stringify(result));
  });
  } catch (e) {
    console.log(e);
  }
})
