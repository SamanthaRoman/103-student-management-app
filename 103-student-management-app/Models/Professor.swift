//
//  Professor.swift
//  103-student-management-app
//
//  Created by Samantha Roman on 10/4/25.
//
import Foundation

class Professor: Identifiable {
    // attributes
    var id: UUID
    var firstName: String
    var lastName: String
    var phoneNumber: String //
    
    // methods
    init(firstName: String, lastName: String, phoneNumber: String) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
    }
}
