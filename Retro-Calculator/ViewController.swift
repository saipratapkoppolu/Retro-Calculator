//
//  ViewController.swift
//  Retro-Calculator
//
//  Created by Sai Pratap Koppolu  on 23/05/16.
//  Copyright © 2016 KSP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Operation:String {
        
        case Divide = "/"
        case Multiply = "*"
        case Add = "+"
        case Subtract = "-"
        case Empty = ""
        
        
    }
    
    var leftValStr = ""
    var rightValStr = ""
    var runningNumber = ""
    var currentOperation = Operation.Empty
    var result = ""

    @IBOutlet weak var outputLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func numberPressed(btn: UIButton!) {
        runningNumber = runningNumber + "\(btn.tag)"
        outputLbl.text = runningNumber
    }
    
    func processOperation(op: Operation){
        
        
        if currentOperation != Operation.Empty {
            
            if runningNumber != ""{
                rightValStr = runningNumber
                runningNumber = ""
            
            
            if currentOperation == Operation.Divide {
                
                result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                
                
            }
                
            if currentOperation == Operation.Multiply {
                    
                result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                    
                
            }
                
            if currentOperation == Operation.Add {
                    
                result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                    
                    
            }
                
            if currentOperation == Operation.Subtract{
                    
                result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                    
                    
            }
                leftValStr = result
                outputLbl.text = result
            }
            
            currentOperation = op
                
            }
            
        
        else {
            leftValStr = runningNumber
            runningNumber = ""
            
            currentOperation = op
            
        }
        
        
           }
    
    @IBAction func onDividePressed()    {
        processOperation(Operation.Divide)
    }
    
    @IBAction func onMultiplyPressed()  {
        processOperation(Operation.Multiply)
    }
    
    @IBAction func onAddPressed()   {
        processOperation(Operation.Add)
    }
    
    @IBAction func onSubtractPressed()  {
        
        processOperation(Operation.Subtract)
    }
    
    @IBAction func onEqualsPressed()    {
        processOperation(currentOperation)
    }
    
    @IBAction func onClearPressed() {
        leftValStr = ""
        rightValStr = ""
        outputLbl.text = ""
        runningNumber = ""
        result = ""
        currentOperation = Operation.Empty
}


}