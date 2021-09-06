//
//  QuadSolverTests.swift
//  QuadraticCalcTests
//
//  Created by Alex BP on 02/09/21.
//

import XCTest
@testable import QuadraticCalc

class QuadSolverTests: XCTestCase {
    let quadCalculadora = QuadSolver()
    
    func testQuadSolver() throws {
        let input = Solver(a: 0, b: 0, c: 0, R1Sol: 0, R2Sol: 0)
        
        let result = quadCalculadora.resolver(ecuacion: input)
        
        let expectedValue : Float = 0
        
        XCTAssertEqual(result.a, expectedValue)
        XCTAssertEqual(result.b, expectedValue)
        XCTAssertEqual(result.c, expectedValue)
        XCTAssertEqual(result.R1Sol, expectedValue)
        XCTAssertEqual(result.R2Sol, expectedValue)
    }
    
    func testQuadSolverSol() throws {
        let input = Solver(a: 2, b: -7, c: 3, R1Sol: 0, R2Sol: 0)
        
        let result = quadCalculadora.resolver(ecuacion: input)
        
        let expectedValueR1: Float = 3.0
        let expectedValueR2: Float = 0.5
        
        XCTAssertEqual(result.R1Sol, expectedValueR1)
        XCTAssertEqual(result.R2Sol, expectedValueR2)
    }
}
