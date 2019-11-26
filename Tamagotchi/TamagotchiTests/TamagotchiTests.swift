//
//  TamagotchiTests.swift
//  TamagotchiTests
//
//  Created by Kua, Hayden (NA) on 21/11/2019.
//  Copyright © 2019 Kua, Hayden (NA). All rights reserved.
//

import XCTest

class TamagotchiTests: XCTestCase {
    
    func testTamagotchiWithNoArgsSetDefaultValuesAndReturnsWithNonNilObjects() {
        //arrange
        //act
        let myTamagotchi = Tamagotchi(name: "Gotchi")
        //assert
        XCTAssertNotNil(myTamagotchi)
        XCTAssertEqual(myTamagotchi.getAge(), 0)
        XCTAssertEqual(myTamagotchi.getName(), "Gotchi")
        XCTAssertEqual(myTamagotchi.getGender(), "Male")
    }
    
    func testFeedingTamagotchiSnacksReturnsNoLongerHungry() {
        //arrange
        //act
        let myTamagotchi = Tamagotchi(name: "Gotchi")
        let testCases = [(input: false, expected: false), (input: true, expected: false)]
        //assert
        for testCase in testCases {
            let actual = myTamagotchi.feedSnacks(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testHealingTamagotchiReturnsFive() {
        //arrange
        //act
        let myTamagotchi = Tamagotchi(name: "Gotchi")
        //assert
        XCTAssertEqual(myTamagotchi.heal(), 5)
    }
    
    
    
    
    
}
