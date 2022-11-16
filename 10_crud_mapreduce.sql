-- 10) Implement CRUD operations. SAVE method. Use following Collection. Perform Map Reduce to count quantity of each item.
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
> var mp = function(){emit(this.brand,this.quantity)}
var rd= function(brand, quantity){var res = {cnt:0}; quantity.forEach(function(quantity){res.cnt++}); return res;}
> db.item.mapReduce(mp, rd, {out:"b"});