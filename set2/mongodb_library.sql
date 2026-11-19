use LibraryDB

db.createCollection("books")

db.books.insertMany([
  {
    book_id: 1,
    title: "Python Programming",
    author: "John Smith",
    category: "Programming",
    price: 500,
    publisher: {
      name: "Tech Publications",
      city: "Pune"
    }
  },
  {
    book_id: 2,
    title: "Database Management",
    author: "Robert",
    category: "Database",
    price: 600,
    publisher: {
      name: "ABC Publications",
      city: "Mumbai"
    }
  },
  {
    book_id: 3,
    title: "Artificial Intelligence",
    author: "David",
    category: "AI",
    price: 750,
    publisher: {
      name: "XYZ Publications",
      city: "Delhi"
    }
  }
])

db.books.insertMany([
  {
    book_id: 4,
    title: "Machine Learning",
    author: "Andrew",
    price: 800,
    reviews: [
      "Very useful book",
      "Easy to understand"
    ],
    available: true
  },
  {
    book_id: 5,
    title: "Web Development",
    category: "Web Technology",
    price: 450,
    publisher: {
      name: "Modern Books"
    },
    tags: ["HTML", "CSS", "JavaScript"],
    available: false
  }
])

db.books.find()

db.books.find().pretty()

db.books.countDocuments()

db.books.find(
  {},
  {title: 1, author: 1, _id: 0}
)