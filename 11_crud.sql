-- 11) Implement CRUD operations. SAVE method. Use following Collection.
-- Item: Item ID, Item quantity, price, brand.

-- Create
use mydb;
db.createCollection('Item');
-- INSERT
db.Item.insertMany([{}]);
-- show
> db.Item.find().pretty();
-- Delete
db.Item.remove({"add" :"yours"});
-- Update
db.Item.update({Item_ID:1},{$set: {Item_Name: "Pablo"}});