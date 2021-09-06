//
//  QuadraticCalcUITests.swift
//  QuadraticCalcUITests
//
//  Created by Alex BP on 02/09/21.
//

import XCTest

class QuadraticCalcUITests: XCTestCase {

    func testSolveQuad() throws {
        let app = XCUIApplication()
        app.launch()
        
        let txtA = app.textFields["ATextField"]
        let txtB = app.textFields["BTextField"]
        let txtC = app.textFields["CTextField"]
        let R1Lab = app.textFields["R1Label"]
        let R2Lab = app.textFields["R2Label"]
        
        txtA.tap()
        txtA.typeText("2")
        txtB.tap()
        txtB.typeText("-7")
        txtC.tap()
        txtC.typeText("3")
        app.buttons["Resolver"].tap()
        
        print("Raiz 1 Txt Field " + (R1Lab.value as! String))
        XCTAssertEqual(R1Lab.value as! String, "3.0")
        print("Raiz 2 Txt Field " + (R2Lab.value as! String))
        XCTAssertEqual(R2Lab.value as! String, "0.5")
    }
}
