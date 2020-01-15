//
//  CarCustomizerUITests.swift
//  CarCustomizerUITests
//
//  Created by Hayden Kua on 12/01/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import XCTest

class CarCustomizerUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhenBoughtExhaustAndTiresPackagesAerodynamicAndMysteryPackagesAreDisabled() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //act
        app.switches["tiresSwitch"].tap()
        app.switches["engineAndExhaustSwitch"].tap()
        
        //assert
        XCTAssertEqual(app.switches["aerodynamicsSwitch"].isEnabled, false)
        XCTAssertEqual(app.switches["mysterySwitch"].isEnabled, false)
        
        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testButtonsAreReenabledWhenGoingToNextCar() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //act
        app.buttons["cycleCars"].tap()
        
        //assert
        XCTAssertEqual(app.switches["tiresSwitch"].isEnabled, true)
        XCTAssertEqual(app.switches["engineAndExhaustSwitch"].isEnabled, true)
        XCTAssertEqual(app.switches["aerodynamicsSwitch"].isEnabled, true)
        XCTAssertEqual(app.switches["mysterySwitch"].isEnabled, true)
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testRemainingFundsEquals1000OnLaunch() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //act
        let actual = app.staticTexts["remainingFunds"].label
        let expected = "Remaining Funds: 1000"
        
        //assert
        XCTAssertEqual(actual, expected)

        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testDisplayStatsLoadedIsCorrect() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //act
        let actual = app.staticTexts["selectedCarStatistics"].label
        let expected = """
        Make: Mazda
        Model: MX-5
        Top Speed: 125
        Acceleration (0-60): 7.7s
        Handling: 5
        """
        
        //assert
        XCTAssertEqual(actual, expected)

        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
