//
//  QuadVars.swift
//  QuadraticCalc
//
//  Created by Alex BP on 03/09/21.
//

import Foundation

public class Solver
{
    public let a : Float
    public let b : Float
    public let c : Float
    public var R1Sol : Float
    public var R2Sol : Float
    
    public init(a : Float, b : Float, c : Float, R1Sol : Float, R2Sol : Float)
    {
        self.a = a
        self.b = b
        self.c = c
        self.R1Sol = R1Sol
        self.R2Sol = R2Sol
    }
}
