var express = require('express');
var router = express.Router();
var databaseModule=require('./dataBase.js');
var bodyParser = require('body-parser');

router.get('/:playerId', function(req,res){
  var playerId = req.params.playerId;
  var query= "";

  query='Select "name", "experience", "gold" From "users" Where "id" = ({0});';
  query = query.replace('{0}',playerId);

  try {
    databaseModule.execute(query, function(result){
      res.send(JSON.stringify(result));
  });
  } catch (e) {
    console.log(e);
  }
})
