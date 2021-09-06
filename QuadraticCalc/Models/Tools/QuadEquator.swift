//
//  QuadEquator.swift
//  QuadraticCalc
//
//  Created by Alex BP on 03/09/21.
//

import Foundation

public class QuadSolver {
    public func resolver(ecuacion : Solver) -> Solver {
        if(ecuacion.a == 0 || (ecuacion.a == 0 && ecuacion.b == 0 && ecuacion.c == 0)) {
            return Solver(a : ecuacion.a, b : ecuacion.b, c : ecuacion.c, R1Sol: 0.0, R2Sol: 0.0)
        }
        
        var Delta:Float
        Delta = ecuacion.b * ecuacion.b - 4 * ecuacion.a * ecuacion.c
        
        if(Delta < 0)
        {
            return Solver(a : ecuacion.a, b : ecuacion.b, c : ecuacion.c, R1Sol: 0.0, R2Sol: 0.0)
        }
        
        ecuacion.R1Sol = (-ecuacion.b + (sqrt(Delta))) / (2 * ecuacion.a)
        ecuacion.R2Sol = (-ecuacion.b - (sqrt(Delta))) / (2 * ecuacion.a)
        
        return Solver(a : ecuacion.a, b : ecuacion.b, c : ecuacion.c, R1Sol : ecuacion.R1Sol, R2Sol : ecuacion.R2Sol)
    }
}
