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
        let myTamagotchi = Tamagotchi()
        //assert
        XCTAssertNotNil(myTamagotchi)
        XCTAssertEqual(myTamagotchi.getAge(), 0)
        XCTAssertEqual(myTamagotchi.getName(), "Gotchi")
        XCTAssertEqual(myTamagotchi.getGender(), "Male")
    }
    
    
    
    
    
    
    
    
}
