var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3307,
    user: "root",
    password: "root",
    database: "bamazonDB"
});

inquirer.prompt([{
    name: "id",
    type: "number",
    message: "Please enter ID # of the item you would like to purchase."
}, {
    name: "purchase",
    type: "number",
    message: "How many would you like to buy?"
}])
    .then(function (answer) {
        connection.query("SELECT * FROM products WHERE id=" + answer.id, function (err, res) {
            if (err) throw err;
            if (res[0].stock_quantity >= answer.purchase) {
                var qvl = "UPDATE products SET stock_quantity = " + (res[0].stock_quantity - answer.purchase) + " WHERE id = " + answer.id + ";";
                connection.query(qvl, function (error, result) {
                    console.log('Purchased complete for $' + (answer.purchase * res[0].price).toFixed(2));
                });
            } else {
                console.log('There is insufficient supplies!');
            }
            connection.end();
        });
    });