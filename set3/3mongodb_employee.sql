use EmployeeDB

db.createCollection("structuredEmployees")
db.createCollection("unstructuredEmployees")

db.structuredEmployees.insertMany([
    {
        emp_id: 101,
        name: "Rahul",
        designation: "Manager",
        department: "HR",
        salary: 50000,
        contact: {
            phone: "9876543210",
            email: "rahul@gmail.com"
        }
    },
    {
        emp_id: 102,
        name: "Priya",
        designation: "Developer",
        department: "IT",
        salary: 40000,
        contact: {
            phone: "9876543211",
            email: "priya@gmail.com"
        }
    }
])

db.unstructuredEmployees.insertMany([
    {
        emp_id: 103,
        name: "Amit",
        designation: "Designer",
        department: "Design",
        salary: 35000,
        contact: "amit@gmail.com",
        skills: ["Photoshop", "Figma"]
    },
    {
        emp_id: 104,
        name: "Sneha",
        department: "Marketing",
        salary: 45000,
        contact: {
            phone: "9876543212"
        },
        projects: ["Campaign A", "Campaign B"],
        experience: 3
    }
])

-- Display structured documents
db.structuredEmployees.find()

-- Display unstructured documents
db.unstructuredEmployees.find()

-- Display all documents in both collections
db.structuredEmployees.find().pretty()
db.unstructuredEmployees.find().pretty()

db.structuredEmployees.find(
    { department: "IT" }
)