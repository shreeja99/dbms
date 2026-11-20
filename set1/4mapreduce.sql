use College

db.students.insertMany([
  { name: "Amit", department: "IT" },
  { name: "Riya", department: "IT" },
  { name: "Rahul", department: "Computer" },
  { name: "Sneha", department: "Computer" },
  { name: "Priya", department: "IT" },
  { name: "Karan", department: "Mechanical" }
])

var mapFunction = function() {
    emit(this.department, 1);
};

var reduceFunction = function(key, values) {
    return Array.sum(values);
};

db.runCommand({
  mapReduce: "students",
  map: mapFunction,
  reduce: reduceFunction,
  out: "department_count"
})

db.department_count.find()

