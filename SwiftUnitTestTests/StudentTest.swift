//
//  StudentTest.swift
//  SwiftUnitTestTests
//
//  Created by Applica on 31/12/2019.
//  Copyright © 2019 Applica. All rights reserved.
//

import Foundation
import XCTest

@testable import SwiftUnitTest

class StudentTest: XCTestCase {
    
    func testInvalidFirstName(){
        let student = Student(firstName: "MA", lastName: "Test")
        XCTAssertFalse(student.validFirstName())
    }
    
    
    func testValidFirstName(){
        let student = Student(firstName: "Long Name", lastName: "Long LastName")
        XCTAssertTrue(student.validFirstName())
    }
    
    
    func testInvalidLastName(){
        let student = Student(firstName: "MA", lastName: "AP")
        XCTAssertFalse(student.validLastName())
    }
    
    
    func testValidLastName(){
         let student = Student(firstName: "MA", lastName: "Test")
        XCTAssertTrue(student.validLastName())
    }
    
    
    func testAddFriend(){
        let student = Student(firstName: "MA", lastName: "Test")
        let friend = Student(firstName: "Tom", lastName: "TestTwo")
        
        XCTAssertTrue(student.friends.count == 0)
        
        student.addFriend(friend: friend)
        
        XCTAssertTrue(student.friends.count > 0)
    }
    
}
