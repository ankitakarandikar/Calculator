//
//  ViewController.swift
//  Calculator
//
//  Created by Anup Upadhye on 4/26/16.
//  Copyright © 2016 gsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var corrOld: Double = 0
    var corr: String = ""
    var val:Double = 0
    var a: String = ""
    var operatorFunc: String=""
    
    @IBOutlet weak var labelDisplay: UILabel!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton! 
    
    @IBOutlet weak var buttonSubtract: UIButton!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonMultiply: UIButton!
    @IBOutlet weak var buttonDivide: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var buttonCancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func funcSix(sender: UIButton) {
        a = "6"
        corr = corr + a
        labelDisplay.text = corr
    }

    @IBAction func funcThree(sender: UIButton) {
        a = "3"
        corr = corr + a
        labelDisplay.text = corr
    }
    @IBAction func funcTwo(sender: UIButton) {
        a = "2"
        corr = corr + a
        labelDisplay.text = corr
    }
    @IBAction func funcOne(sender: UIButton) {
        a = "1"
        corr = corr + a
        labelDisplay.text = corr
    }
    @IBAction func funcFive(sender: UIButton) {
        a = "5"
        corr = corr + a
        labelDisplay.text = corr
    }

    @IBAction func funcFour(sender: UIButton) {
        a = "4"
        corr = corr + a
        labelDisplay.text = corr
    }
    @IBAction func funcNine(sender: UIButton) {
        a = "9"
        corr = corr + a
        labelDisplay.text = corr
    }
    
    @IBAction func funcEight(sender: UIButton) {
        a = "8"
        corr = corr + a
        labelDisplay.text = corr
    }
    @IBAction func funcSeven(sender: UIButton) {
        a = "7"
        corr = corr + a
        labelDisplay.text = String(corr)
    }
    
    @IBAction func funcCancel(sender: UIButton) {
        
        corr = "0"
        corrOld = 0
        labelDisplay.text = corr
        val = 0
        
        operatorFunc = ""
    }
    
    @IBAction func funcZero(sender: UIButton) {
        a = "0"
        corr = corr + a
        labelDisplay.text = String(corr)
    }
   
    @IBAction func funcEqual(sender: UIButton) {
        
        switch operatorFunc{
            case "+":
            val = Double(corr)! + corrOld
            labelDisplay.text = String(val)

            case "-":
                val =  corrOld - Double(corr)!
                labelDisplay.text = String(val)

            case "*":
                val = Double(corr)! * corrOld
                labelDisplay.text = String(val)

            case "/":
                val =  corrOld/Double(corr)!
                labelDisplay.text = String(val)
            default:
                labelDisplay.text = ""

        }
        corrOld = val
        corr = String(val)
        
        
    }
    
    @IBAction func funcDivide(sender: UIButton) {
        
        corrOld = Double(corr)!
        labelDisplay.text = corr
        corr = "0"
        operatorFunc="/"
    }
    
    @IBAction func funcMultiply(sender: UIButton) {
        corrOld = Double(corr)!
        labelDisplay.text=corr
        corr = "0"
        operatorFunc = "*"
        
    }
    
    @IBAction func funcAdd(sender: UIButton) {
        corrOld = Double(corr)!
        labelDisplay.text = corr
        corr = "0"
        operatorFunc="+"

    }
    
    @IBAction func funcSubtract(sender: UIButton) {
        corrOld = Double(corr)!
        labelDisplay.text = corr
        corr = "0"
        operatorFunc="-"

       }
    
    
}