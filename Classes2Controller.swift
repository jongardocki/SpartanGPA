//
//  Classes2Controller.swift
//  GPA Calculator
//
//  Created by Jonathan Gardocki on 2/6/16.
//  Copyright © 2016 Jonathan Gardocki. All rights reserved.
//

                import UIKit

        class Classes2Controller: UIViewController {
    
                //middle
            @IBOutlet weak var Class1TF: UITextField!
            @IBOutlet weak var Class2TF: UITextField!
            @IBOutlet weak var Credits1TF: UITextField!
            @IBOutlet weak var Credits2TF: UITextField!
            @IBOutlet weak var Grade1TF: UITextField!
            @IBOutlet weak var Grade2TF: UITextField!
            @IBOutlet weak var GPALabel: UILabel!
   
                //top
            @IBOutlet weak var CumCredits: UITextField!
            @IBOutlet weak var CumGPA: UITextField!
            @IBOutlet weak var CumTotal: UILabel!
         
                //button
            @IBOutlet weak var calculate: UIButton!
    
                override func viewDidLoad() {
                super.viewDidLoad()
        
                self.navigationController?.navigationBar.translucent = true
        
                calculate.backgroundColor = UIColor.clearColor()
                calculate.layer.cornerRadius = 7
                calculate.layer.borderWidth = 2
                calculate.layer.borderColor = UIColor.whiteColor().CGColor
        
                //hide labels below Calculate
    
                GPALabel.hidden = true
                CumTotal.hidden = true
     
    
        
                let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Classes2Controller.dismissKeyboard))
                view.addGestureRecognizer(tap)
        
                }
    
                func dismissKeyboard() {
                //Causes the view (or one of its embedded text fields) to resign the first responder status.
                view.endEditing(true)
                }


        override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
                }

            @IBAction func Calculate(sender: AnyObject) {
                // if not filled in
                if Credits1TF.text == "" || Credits2TF.text == "" || Grade1TF.text == "" || Grade2TF.text == ""
                {
                let title = "Oops"
                let message = "Please enter a value for every Non-Cumulative Credits and Grade field."
                let okText = "OK"
                let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
            
                let okayButton = UIAlertAction(title: okText, style: UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(okayButton)
            
                presentViewController(alert, animated: true, completion: nil)
                    
                }
            
        else
            
                {
            
        if CumCredits.text == "" || CumGPA.text == ""
                
                {
                
                //credits
                let credit1 = Float(Credits1TF.text!)!
                let credit2 = Float(Credits2TF.text!)!
                
                //grades
                let grade1 = Float(Grade1TF.text!)!
                let grade2 = Float(Grade2TF.text!)!
                
                //math
                let firstgrade = credit1 * grade1
                let secondgrade = credit2 * grade2
                
                //calculations
                let allcredits = credit1 + credit2
                let allgrades = firstgrade + secondgrade
                
                //final answer
                let finalgrade = (round((allgrades / allcredits) * 10000)/10000)
                
                //label
                GPALabel.text = "\(finalgrade)"
                GPALabel.hidden = false
                CumTotal.hidden = true
                
                //first responders
                Class1TF.resignFirstResponder()
                Class2TF.resignFirstResponder()
                Credits1TF.resignFirstResponder()
                Credits2TF.resignFirstResponder()
                Grade1TF.resignFirstResponder()
                Grade2TF.resignFirstResponder()
                
                CumCredits.resignFirstResponder()
                CumGPA.resignFirstResponder()
                   
             
                
                }
                
                else
                
                {
                
                //credits
                let credit1 = Float(Credits1TF.text!)!
                let credit2 = Float(Credits2TF.text!)!
                
                //grades
                let grade1 = Float(Grade1TF.text!)!
                let grade2 = Float(Grade2TF.text!)!
                
                //math
                let firstgrade = credit1 * grade1
                let secondgrade = credit2 * grade2
                
                //calculations
                let allcredits = credit1 + credit2
                let allgrades = firstgrade + secondgrade
                
                //final answer
                let finalgrade = (round((allgrades / allcredits) * 10000)/10000)
                
                let CCredits = Float(CumCredits.text!)!
                let CGPA = Float(CumGPA.text!)!
                
                //cumulative answer
                let LastGrade = CCredits * CGPA
                let MegaCredits = allcredits + CCredits
                let MegaGPA = allgrades + LastGrade
                    
               
                let MegaEverything = (round((MegaGPA / MegaCredits) * 10000)/10000)
                        
                CumTotal.hidden = false
                CumTotal.text = "\(MegaEverything)"
                GPALabel.text = "\(finalgrade)"
                GPALabel.hidden = false

                
                //first responders
                Class1TF.resignFirstResponder()
                Class2TF.resignFirstResponder()
                    
                Credits1TF.resignFirstResponder()
                Credits2TF.resignFirstResponder()
                    
                Grade1TF.resignFirstResponder()
                Grade2TF.resignFirstResponder()
                
                CumCredits.resignFirstResponder()
                CumGPA.resignFirstResponder()
            
            }
            }
            }
            }