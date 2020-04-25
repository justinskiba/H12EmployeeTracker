var mysql = require("mysql");
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "EmployeeTracker",
  port: 3306
});
connection.connect(function(err) {
  if (err) {
    console.log("\n\n" + err + "\n\n");
  }
});
module.exports = connection;
