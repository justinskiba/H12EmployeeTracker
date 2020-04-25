//use inquirer package to ask questions
var inquirer = require("inquirer");
var Tracker = require("./Database");
function start() {
  inquirer
    .prompt([
      {
        type: "confirm",
        name: "viewall",
        message: "Do you want to see all Employees?"
      }
    ])
    .then(function(answers) {
      view(answers);
    });
}
async function view(answers) {
  console.log(answers);
  if (answers.viewall) {
    var employees = await Tracker.findAllemployees();
    console.log("employees;", employees);
  } else {
    console.log("Good Bye");
    return;
  }
}
start();
