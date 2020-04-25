var connection = require("./connection");
class Tracker {
  constructor(connection) {
    this.connection = connection;
  }
  async findAllemployees() {
    try {
      return await this.connection.query(
        "SELECT id, first_name, last_name FROM employee;"
      );
    } catch (error) {
      console.log("\n\n" + error + "\n\n");
    }
  }
}
module.exports = new Tracker(connection);
//insert data, update stuff--use connection.query
