//
//  StudentListView.swift
//  103-student-management-app
//
//  Created by Samantha Roman on 10/1/25.
//

import SwiftUI

struct StudentListView: View {
    
    @State private var students: [Student] = [
        Student(name: "Fernanda", grade: 78.66),
        Student(name: "Samantha", grade: 99.99),
        Student(name: "Daniel", grade: 100.00)
    ]
    
    @State private var newStudentName: String = ""
    @State private var newStudentGrade: String = ""
    var body: some View {
        
        List(students, id: \.name) {
            student in
            Text("\(student.name) - \(student.grade, specifier: "%.2f")")
        } // End - student list
        
        HStack {
            // text field to work need a place to store data
            // need state variable and bind the input to the
            // state variable and update & display it in the UI
            //           ^^ line 18 OUTSIDE BODY VIEW
            TextField("Name:", text: $newStudentName)
            // style the input field box
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.2)
                ) // End - Name Text Field
            
            TextField("Grade:", text: $newStudentGrade)
            // style the input field box
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.2)
                ) // End - Grade Text field
            
            Button("Add") {
                if let grade = Float(newStudentGrade) {
                    // now we create the new student object
                    // to display on the UI
                    let student = Student(name: newStudentName, grade: grade)
                    // then add the onject to student list (arra)
                    students.append(student)
                    
                    // then clear the TextField
                    newStudentName = ""
                    newStudentGrade = ""
                }
            } // End - Button "add"
            .padding()
            
        } // End - HStack _____ Input Fields
        .padding()
        
        
    } // End - var body
        
} // End -StudentListView

#Preview {
    StudentListView()
}
