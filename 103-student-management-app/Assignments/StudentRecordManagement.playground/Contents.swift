

func calculateAverage(grades: [Double]) -> Double {
    // create placeholder befor you loop
    var total: Double = 0
    for grade in grades {
        total += grade
    }
    return total / Double(grades.count)
} // END calculateAverage()

// create function that will recieve the dictionary with key and value.
func findTopStudent(from studentGrades: [String: [Double]]) {
    // placeholder variables starting at 0
    var highestAverage = 0.0
    var topStudent = ""
    
    // loop
    for (studentName, grades) in studentGrades {
        let average = calculateAverage(grades: grades)
        
        if average > highestAverage {
            highestAverage = average
            topStudent = studentName
        }
    }
    print("Top Student: \(topStudent) with an average of \(highestAverage)") // print when called
}

    

let studentNames: [String] = ["Sirina", "Alyssa", "Trent", "Mia", "Elvis"]


let studentGrades: [String: [Double]] = [
    "Sirina": [98.3, 78.4, 99.8, 86.5],
    "Alyssa": [98.3, 78.4, 99.8, 86.5],
    "Trent": [98.3, 78.4, 99.8, 86.5],
    "Mia": [98.3, 78.4, 99.8, 86.5],
    "Elvis": [98.3, 78.4, 99.8, 86.5]
]

print("Student Record Summary: \n");
for studentName in studentNames {
    print("Student: \(studentName)")
    print("Grade: \(studentGrades[studentName]!)")
    print("Average: \(calculateAverage(grades: studentGrades[studentName]!)) \n")
    findTopStudent(from: studentGrades)
}

//Extra Challenge:
//
//Add functionality to identify and print the student with the highest average grade.
