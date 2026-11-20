use HospitalDB

db.createCollection("structuredPatients")
db.createCollection("unstructuredPatients")

db.structuredPatients.insertMany([
    {
        patient_id: 101,
        patient_name: "Rahul",
        age: 25,
        department: "Cardiology",
        doctor_name: "Dr. Sharma",
        contact: {
            phone: "9876543210",
            email: "rahul@gmail.com"
        }
    },
    {
        patient_id: 102,
        patient_name: "Priya",
        age: 30,
        department: "Neurology",
        doctor_name: "Dr. Mehta",
        contact: {
            phone: "9876543211",
            email: "priya@gmail.com"
        }
    }
])

db.unstructuredPatients.insertMany([
    {
        patient_id: 103,
        patient_name: "Amit",
        age: 40,
        department: "Orthopedics",
        doctor_name: "Dr. Patil",
        contact: "9876543212",
        diseases: ["Back Pain", "Joint Pain"]
    },
    {
        patient_id: 104,
        patient_name: "Sneha",
        age: 35,
        department: "Dermatology",
        doctor_name: "Dr. Joshi",
        contact: {
            phone: "9876543213"
        },
        medical_history: ["Allergy", "Skin Infection"],
        room_number: 205
    }
])

-- Display structured documents
db.structuredPatients.find().pretty()

-- Display unstructured documents
db.unstructuredPatients.find().pretty()

db.structuredPatients.find({})
db.unstructuredPatients.find({})

