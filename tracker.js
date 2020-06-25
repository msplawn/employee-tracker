var mysql = require("mysql");
var inquirer = require("inquirer");
const { exit } = require("process");
const db = require("./db")

// create the connection information for the sql database

function start() {
    inquirer
        .prompt({
            name: "task",
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View All Employees",
                "View All Employees By Department",
                "View All Employees By Role",
                "Add Employee",
                "Remove Employee",
                "Update Employee Role",
                "Update Employee Department",
                "Exit"
            ]
        })
        .then(function (answer) {
            console.log(answer);
            switch (answer.task) {
                case "View All Employees":
                    return viewAll();
                    break;
                case "View All Employees By Department":
                    return viewByDpmt();
                    break;
                case "View All Employees By Role":
                    return viewByRole();
                    break;
                case "Add Employee":
                    return addEmployee();
                    break
                case "Remove Employee":
                    return removeEmployee();
                    break;
                case "Update Employee Role":
                    return updateRole();
                    break;
                case "Update Employee Department":
                    return updateDpmt();
                    break;
                default:
                    quit();

            }
        });
};

async function viewAll() {
    const employees = await db.viewAll();
    console.table(employees);
    start();
}

async function viewByDpmt() {
    const departments = await db.findAllDepartments();
    const departmentChoices = departments.map(({ id, name }) => ({
        name: name,
        value: id
    }))
    const { departmentID } = await
        prompt([
            {
                type: "list",
                name: "departmentID",
                message: "Which department would you like to view?",
                choices: departmentChoices
            }
        ])
    const employees = await db.findByDepartment(departmentID)
    console.table(employees);
    start();
}

async function addEmployee() {
    const newEmployee = await db.viewAll();

    start();
}

function quit() {
    console.log("Goodbye!");
    process.exit();
}
start();