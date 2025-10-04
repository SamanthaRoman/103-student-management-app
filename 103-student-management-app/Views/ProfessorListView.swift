//
//  ProfessorsListView.swift
//  103-student-management-app
//
//  Created by Samantha Roman on 10/4/25.
//

import SwiftUI

struct ProfessorListView: View {
    
    @State private var professors: [Professor] = [
        Professor(firstName: "Sam",lastName: "Roman", phoneNumber: "(777) 111-2222"),
        Professor(firstName: "John",lastName: "Doe", phoneNumber: "(111) 345-2222"),
        Professor(firstName: "Bob",lastName: "Smith", phoneNumber: "(444) 111-2222")
    ] // End Preloaded Professor Array
    
    // hold data
    @State private var newProfessorFirstName: String = ""
    @State private var newProfessorLastName: String = ""
    @State private var newProfessorPhoneNumber: String = ""
    
    var body: some View {
        
        List(professors, id: \.firstName) {
            professor in
            Text("\(professor.firstName) - \(professor.lastName) - \(professor.phoneNumber)")
        } // End professor list
        
        HStack {
            // text field to work need a place to store data
            // need state variable and bind the input to the
            // state variable and update & display it in the UI
            //           ^^ line 18 OUTSIDE BODY VIEW
            TextField("First Name:", text: $newProfessorFirstName)
            // style the input field box
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.2)
                ) // End - First Name Text Field
            
            TextField("Last Name:", text: $newProfessorLastName)
            // style the input field box
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.2)
                ) // End - Last Name Text field
            
            TextField("Phone Number:", text: $newProfessorPhoneNumber)
            // style the input field box
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                        .opacity(0.2)
                ) // End - Phone Number Text Field
            
            Button("Add") {
                // validation if there is a phone number then create new professor object
//                if let phoneNumber = String(newProfessorPhoneNumber) {
                    // now we create the new professor object
                    // to display on the UI
                    let professor = Professor(firstName: newProfessorFirstName, lastName: newProfessorLastName, phoneNumber: newProfessorPhoneNumber)
                    // then add the object to student list (arra)
                    professors.append(professor)
                    
                    // then clear the TextField
                    newProfessorFirstName = ""
                    newProfessorLastName = ""
                    newProfessorPhoneNumber = ""
//                } // End let phoneNumber
            } // End - Button "add"
            .padding()
            
        } // End - HStack _____ Input Fields
        .padding()
        }
    
}

#Preview {
    ProfessorListView()
}
