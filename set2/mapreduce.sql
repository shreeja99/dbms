use LibraryDB

db.books.insertMany([
  {book_id: 1, title: "Python", category: "Programming"},
  {book_id: 2, title: "Java", category: "Programming"},
  {book_id: 3, title: "DBMS", category: "Database"},
  {book_id: 4, title: "MongoDB", category: "Database"},
  {book_id: 5, title: "AI", category: "Artificial Intelligence"},
  {book_id: 6, title: "ML", category: "Artificial Intelligence"},
  {book_id: 7, title: "C++", category: "Programming"}
])

var mapFunction = function() {
    emit(this.category, 1);
};

var reduceFunction = function(key, values) {
    return Array.sum(values);
};

db.runCommand({
    mapReduce: "books",
    map: mapFunction,
    reduce: reduceFunction,
    out: "category_count"
})

db.category_count.find()