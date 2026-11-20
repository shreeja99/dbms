use HospitalDB

db.patients.insertMany([
    {patient_id: 101, name: "Rahul", department: "Cardiology"},
    {patient_id: 102, name: "Priya", department: "Neurology"},
    {patient_id: 103, name: "Amit", department: "Cardiology"},
    {patient_id: 104, name: "Sneha", department: "Orthopedics"},
    {patient_id: 105, name: "Riya", department: "Neurology"}
])

var mapFunction = function() {
    emit(this.department, 1);
};

var reduceFunction = function(key, values) {
    return Array.sum(values);
};

db.runCommand({
    mapReduce: "patients",
    map: mapFunction,
    reduce: reduceFunction,
    out: "department_count"
})

db.department_count.find()