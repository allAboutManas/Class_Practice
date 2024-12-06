-- create a table called products with fields : product_id , product_name . price ,category amd stock_quality.



CREATE TABLE products (
    product_id INT PRIMARY KEY , 
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100) NOT NULL,
    stock_quantity INT 
);




INSERT INTO products (product_name, price, category, stock_quantity) 
VALUES 
    (1,'mac', 799.99, 'Electronics', 50),
    (2,'shirt', 19.99, 'Clothing', 200),
    (3,'abc', 49.99, 'Appliances', 30),
    (4,'hp', 89.99, 'Electronics', 75),
    (5,'sofa', 129.99, 'Furniture', 15);


-- update the stock quatity of a specific product in the Products table 

UPDATE products
SET stock_quantity = 200
WHERE product_name = 'hp';





-- Mongo Db

db.Products.insertOne({
    product_name:"Laptop",
    price:99.87,
    category:"Electronics"
})


db.Products.find()

db.Products.updateOne({product_name:"Laptop"},
{$set:{price:777.00},
  
}
);
db.Products.find()



db.Products.deleteOne({product_name:"Laptop"});


db.Customers.insertMany([
  { name: "abc", email: "abc@example.com", age: 1 },
  { name: "xyz", email: "xyz@example.com", age: 2 }
]);

db.Customers.find()


