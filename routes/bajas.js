var express = require('express');
var router = express.Router();
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "192.168.33.10",
  user: "root",
  password: "",
  database: "test"
});

/* GET bajas page. */
router.route('/')

.get(function(req, res, next) {
  res.render('bajas', { title: 'Bajas' });
})

.post(function(req, res){
  var name = req.body.firstName;
  con.connect(function(err){
    if(err){
      console.log('Error connecting to Db');
      res.render('error', {error: err});
      return;
    }
    console.log('Connection established');
  });

  con.query('DELETE FROM employees WHERE name = ?', [name], function (err, result) {
      if (err) {
        throw err;
        return;
      }
      console.log('Deleted ' + result.affectedRows + ' rows');
    }
  );
  con.end();
  res.render('bajas-req', {name: name});
});

module.exports = router;
