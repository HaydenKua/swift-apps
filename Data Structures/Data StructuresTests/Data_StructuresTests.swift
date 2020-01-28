//
//  Data_StructuresTests.swift
//  Data StructuresTests
//
//  Created by Kua, Hayden (NA) on 27/01/2020.
//  Copyright © 2020 Kua, Hayden (NA). All rights reserved.
//

import XCTest
@testable import Data_Structures

class Data_StructuresTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testPushingItemIntoStackActuallyPushesItemIntoTheLastPositionInTheStack() {
        //arrange
        let stack = Stack()
        let testCases = [(input: "Bob", expected: "Bob"), (input: "Steve", expected: "Steve")]
        //act
        //assert
        for testCase in testCases {
            stack.push(testCase.input)
            let actual = stack.peek()
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testPoppingItemFromStackActuallyPopsItemOutOfStack() {
        //arrange
        let stack = Stack()
        stack.push("Bob")
        stack.push("Steve")
        //act
        //assert
        stack.pop()
        let actual = stack.peek()
        let expected = "Bob"
        XCTAssertEqual(actual, expected)
        
    }


}
