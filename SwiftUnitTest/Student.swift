//
//  Student.swift
//  SwiftUnitTest
//
//  Created by Applica on 31/12/2019.
//  Copyright © 2019 Applica. All rights reserved.
//

import Foundation

class Student {
    
    private var firstName: String
    private var lastName: String
    var friends: [Student] = []
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func addFriend(friend: Student){
        friends.append(friend)
    }
    
    func validFirstName() -> Bool {
        return firstName.count > 3
    }
    
    func validLastName() -> Bool {
        return lastName.count > 3
    }
    
    func setFirstName(firstName: String){
        self.firstName = firstName
    }
    
    func setLastName(lastName: String){
        self.lastName = lastName
    }
    
}
