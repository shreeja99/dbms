use StoreDB

db.products.insertMany([
    {product: "Laptop", category: "Electronics"},
    {product: "Mobile", category: "Electronics"},
    {product: "Shirt", category: "Clothing"},
    {product: "Jeans", category: "Clothing"},
    {product: "Shoes", category: "Footwear"}
])

var mapFunction = function() {
    emit(this.category, 1);
};

var reduceFunction = function(key, values) {
    return Array.sum(values);
};

db.runCommand({
    mapReduce: "products",
    map: mapFunction,
    reduce: reduceFunction,
    out: "category_count"
})

db.category_count.find()