//
//  ViewController.swift
//  QuadraticCalc
//
//  Created by Alex BP on 02/09/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let quadCalculadora = QuadSolver()
    @IBOutlet weak var txtA: UITextField!
    @IBOutlet weak var txtB: UITextField!
    @IBOutlet weak var txtC: UITextField!
    @IBOutlet weak var btnSolve: UIButton!
    @IBOutlet weak var btnRes: UIButton!
    @IBOutlet weak var R1Sol: UITextField!
    @IBOutlet weak var R2Sol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func btnResAction(_ sender: UIButton) {
        txtA.text = ""
        txtB.text = ""
        txtC.text = ""
        R1Sol.text = ""
        R2Sol.text = ""
    }
    
    @IBAction func btnSolveAction(_ sender: UIButton) {
        R1Sol.text = ""
        R2Sol.text = ""
        if let a = txtA.text {
            if !a.isEmpty {
                if let b = txtB.text {
                    if !b.isEmpty {
                        if let c = txtC.text {
                            if !c.isEmpty {
                                let sol = quadCalculadora.resolver(ecuacion: Solver(a: Float(a)!, b: Float(b)!, c: Float(c)!, R1Sol: Float(0), R2Sol: Float(0)))
                                
                                R1Sol.text = String(sol.R1Sol)
                                R2Sol.text = String(sol.R2Sol)
                            }
                        }
                    }
                }
            }
        }
    }
    
}

