var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "192.168.33.10",
  user: "root",
  password: "",
  database: "test"
});

/* GET home page. */
router.route('/')

.get(function(req, res) {
  res.render('altas');
})

.post(function(req, res){
  var name = req.body.firstName;
  var location = req.body.location;

  con.connect(function(err){
    if(err){
      console.log('Error connecting to Db');
      return;
    }
    console.log('Connection established');
  });

  con.query('INSERT INTO employees SET ?', {name: name, location: location}, function(err,res){

    console.log('Last insert ID:', res.insertId);
  });
  con.end();
  res.render('altas-req', {name: name, location: location});
});

module.exports = router;
