//
//  CarCustomizerTests.swift
//  CarCustomizerTests
//
//  Created by Hayden Kua on 12/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import XCTest
@testable import CarCustomizer

class CarCustomizerTests: XCTestCase {

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
    
    func testOutputOutputsIntendedResult() {
        let car = Car(make: "Mazda", model: "MX-5", topSpeed: 125, acceleration: 7.7, handling: 5)
        let actual = car.displayStats()
        let expected = """
        Make: Mazda
        Model: MX-5
        Top Speed: 125
        Acceleration (0-60): 7.7s
        Handling: 5
        """
        XCTAssertEqual(actual, expected)
    }


}
