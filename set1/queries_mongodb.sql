use College

db.students.insertMany([
  {roll: 1, name: "Amit", dept: "IT", age: 20, marks: 85, city: "Pune"},
  {roll: 2, name: "Riya", dept: "Computer", age: 21, marks: 90, city: "Mumbai"},
  {roll: 3, name: "Rahul", dept: "IT", age: 22, marks: 65, city: "Pune"},
  {roll: 4, name: "Sneha", dept: "ENTC", age: 20, marks: 75, city: "Nashik"},
  {roll: 5, name: "Karan", dept: "Computer", age: 23, marks: 95, city: "Pune"},
  {roll: 6, name: "Priya", dept: "IT", age: 21, marks: 55, city: "Mumbai"},
  {roll: 7, name: "Neha", dept: "ENTC", age: 22, marks: 88, city: "Pune"},
  {roll: 8, name: "Arjun", dept: "Computer", age: 20, marks: 70, city: "Delhi"}
])

db.students.find()

db.students.find({dept: "IT"})

db.students.find({marks: {$gt: 80}})

db.students.find({marks: {$lte: 75}})

db.students.find({dept: {$in: ["IT", "Computer"]}})

db.students.find({
  $and: [
    {marks: {$gt: 70}},
    {age: {$lt: 22}}
  ]
})

db.students.find({
  $or: [
    {city: "Pune"},
    {city: "Mumbai"}
  ]
})

db.students.find({dept: {$ne: "IT"}})

db.students.find().sort({marks: -1})

db.students.find().sort({marks: -1}).limit(3)