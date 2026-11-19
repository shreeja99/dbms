use StudentDB

db.createCollection("structuredStudents")
db.createCollection("unstructuredStudents")

db.structuredStudents.insertMany([
    {
        roll_no: 1,
        name: "Rahul",
        department: "IT",
        marks: 85,
        address: {
            city: "Pune",
            state: "Maharashtra"
        }
    },
    {
        roll_no: 2,
        name: "Priya",
        department: "CS",
        marks: 92,
        address: {
            city: "Mumbai",
            state: "Maharashtra"
        }
    }
])

db.unstructuredStudents.insertMany([
    {
        roll_no: 3,
        name: "Amit",
        department: "ENTC",
        marks: 78,
        address: "Nashik",
        hobbies: ["Reading", "Cricket"]
    },
    {
        roll_no: 4,
        name: "Sneha",
        department: "IT",
        marks: 90,
        address: {
            city: "Pune",
            pincode: 411001
        },
        skills: ["Python", "Java"],
        attendance: 95
    }
])

-- Display structured documents
db.structuredStudents.find().pretty()

-- Display unstructured documents
db.unstructuredStudents.find().pretty()

db.structuredStudents.find({})
db.unstructuredStudents.find({})