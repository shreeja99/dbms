use CollegeDB

db.students.insertMany([
    {roll: 1, name: "Rahul", dept: "IT", age: 21, marks: 85, city: "Pune"},
    {roll: 2, name: "Priya", dept: "CS", age: 20, marks: 92, city: "Mumbai"},
    {roll: 3, name: "Amit", dept: "IT", age: 22, marks: 65, city: "Pune"},
    {roll: 4, name: "Sneha", dept: "ENTC", age: 21, marks: 78, city: "Nashik"},
    {roll: 5, name: "Riya", dept: "CS", age: 20, marks: 88, city: "Pune"},
    {roll: 6, name: "Karan", dept: "IT", age: 23, marks: 55, city: "Mumbai"}
])

db.students.find()

db.students.find({dept: "IT"})

db.students.find({marks: {$gt: 80}})

db.students.find({
    marks: {$gte: 60, $lte: 90}
})

db.students.find({
    dept: {$in: ["IT", "CS"]}
})

db.students.find({
    dept: {$ne: "IT"}
})

db.students.find({
    $and: [
        {marks: {$gt: 80}},
        {age: {$lt: 22}}
    ]
})

db.students.find({
    $or: [
        {city: "Pune"},
        {city: "Mumbai"}
    ]
})

db.students.find(
    {},
    {_id: 0, name: 1, dept: 1, marks: 1}
)

db.students.find().sort({marks: -1})

db.students.find().sort({marks: -1}).limit(3)

db.students.find({
    dept: {$nin: ["IT", "CS"]}
})