//
//  ViewController.swift
//  KurtEllul_SimpleCalculator
//
//  Created by Kurt Ellul on 09/10/2016.
//  Copyright © 2016 Kurt Ellul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var txtResult: UITextField!
    
    var result = Float()
    var number = Float()
    
    var selectedOperator = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func btnNumInput(_ sender: UIButton) {
        
        number = number * 10 + Float(sender.titleLabel!.text!)!
        
        txtResult.text = ("\(number)")
        
        
    }
    
    
    @IBAction func btnOperations(_ sender: UIButton) {
        
        switch selectedOperator{
        
        case "=":
            result = number
            
        case "+":
            result = result + number
            
        case "-":
            result = result - number
            
        case "*":
            result = result * number
            
        case "/":
            result = result / number
            
            
        
        default:
            print("Error");
        
        }
        
        number = 0
        txtResult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "="){
        
        result = 0
            
        }

        selectedOperator = sender.titleLabel!.text! as String!
    }
    
    
    @IBAction func btnClear(_ sender: UIButton) {
        
        result = 0
        number = 0
        selectedOperator = "="
        
        txtResult.text = ("\(result)")
        
    }
    
    
    
    
    
    
    
    
    
}

