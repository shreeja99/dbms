use CollegeDB

db.students.insertMany([
  {roll: 1, name: "Amit", dept: "IT", age: 20, marks: 85, city: "Pune"},
  {roll: 2, name: "Riya", dept: "Computer", age: 21, marks: 90, city: "Mumbai"},
  {roll: 3, name: "Rahul", dept: "IT", age: 22, marks: 65, city: "Pune"},
  {roll: 4, name: "Sneha", dept: "ENTC", age: 20, marks: 75, city: "Nashik"},
  {roll: 5, name: "Karan", dept: "Computer", age: 23, marks: 95, city: "Pune"},
  {roll: 6, name: "Priya", dept: "IT", age: 21, marks: 55, city: "Mumbai"},
  {roll: 7, name: "Neha", dept: "ENTC", age: 22, marks: 88, city: "Pune"},
  {roll: 8, name: "Arjun", dept: "Computer", age: 20, marks: 70, city: "Delhi"},
  {roll: 9, name: "Isha", dept: "IT", age: 23, marks: 92, city: "Nashik"},
  {roll: 10, name: "Varun", dept: "ENTC", age: 21, marks: 60, city: "Mumbai"}
])

db.students.find()

db.students.find({dept: "IT"})

db.students.find({marks: {$gt: 80}})

db.students.find({marks: {$lt: 70}})

db.students.find({marks: {$gte: 75}})

db.students.find({age: {$lte: 21}})

db.students.find({
  dept: {$in: ["IT", "Computer"]}
})

db.students.find({
  dept: {$ne: "IT"}
})

db.students.find({
  $and: [
    {marks: {$gte: 70}},
    {marks: {$lte: 90}}
  ]
})

db.students.find({
  $or: [
    {city: "Pune"},
    {city: "Mumbai"}
  ]
})

db.students.find({
  city: {$not: {$eq: "Pune"}}
})

db.students.find({
  dept: {$nin: ["IT", "ENTC"]}
})
