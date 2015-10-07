var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "192.168.33.10",
  user: "root",
  password: "",
  database: "test"
});

con.connect(function(err){
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});

/* GET cambios page. */
router.route('/')

.get(function(req, res, next) {
  res.render('cambios', { title: 'Cambios' });
})

.post(function(req, res){
  var name_toChange = req.body.firstName_toChange;
  var name = req.body.firstName;

  con.query('UPDATE employees SET name = ? Where name = ?', [name, name_toChange], function (err, result) {
    if (err) throw err;

    console.log('Changed ' + result.changedRows + ' rows');
  }
  );
  con.end();
  res.render('cambios-req', {from: name_toChange, to: name});
});

module.exports = router;
