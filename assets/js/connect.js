var mysql = require("mysql");
var md5 = require('js-md5');

// First you need to create a connection to the db
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "idjodb",
    dateStrings: "DATETIME"
});

con.connect(function(err) {
    if (err) {
        console.log('Error connecting to Db');
        return;
    }
    console.log('Connection established');
});


//con.end(function(err) {
// The connection is terminated gracefully
// Ensures all previously enqueued queries are still
// before sending a COM_QUIT packet to the MySQL server.
//});

// Load native UI library
var ngui = require('nw.gui');

// Get the current window
var nwin = ngui.Window.get();

//moment.js
var moment = require('moment');
moment().format();

//numeral.js 
var numeral = require('numeral');
