//
//  Classes6Controller.swift
//  GPA Calculator
//
//  Created by Jonathan Gardocki on 2/6/16.
//  Copyright © 2016 Jonathan Gardocki. All rights reserved.
//

import UIKit

class Classes6Controller: UIViewController {
    @IBOutlet weak var Class1TF: UITextField!
    @IBOutlet weak var Class2TF: UITextField!
    @IBOutlet weak var Class3TF: UITextField!
    @IBOutlet weak var Class4TF: UITextField!
    @IBOutlet weak var Class5TF: UITextField!
    @IBOutlet weak var Class6TF: UITextField!
    @IBOutlet weak var Credits1TF: UITextField!
    @IBOutlet weak var Credits2TF: UITextField!
    @IBOutlet weak var Credits3TF: UITextField!
    @IBOutlet weak var Credits4TF: UITextField!
    @IBOutlet weak var Credits5TF: UITextField!
    @IBOutlet weak var Credits6TF: UITextField!
    @IBOutlet weak var Grade1TF: UITextField!
    @IBOutlet weak var Grade2TF: UITextField!
    @IBOutlet weak var Grade3TF: UITextField!
    @IBOutlet weak var Grade4TF: UITextField!
    @IBOutlet weak var Grade5TF: UITextField!
    @IBOutlet weak var Grade6TF: UITextField!
  
    @IBOutlet weak var GPALabel: UILabel!
    
    @IBOutlet weak var CumCredits: UITextField!
    @IBOutlet weak var CumGPA: UITextField!
    @IBOutlet weak var CumTotal: UILabel!
  

    @IBOutlet weak var calculate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculate.backgroundColor = UIColor.clearColor()
        calculate.layer.cornerRadius = 1
        calculate.layer.borderWidth = 2
        calculate.layer.borderColor = UIColor.whiteColor().CGColor
        
       
        GPALabel.hidden = true
        CumTotal.hidden = true
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Classes6Controller.dismissKeyboard))
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
    

    
    @IBAction func Calculate(sender: AnyObject)
    {
        
        
        if Credits1TF.text == "" || Credits2TF.text == "" || Credits3TF.text == "" || Credits4TF.text == "" || Credits5TF.text == "" || Credits6TF.text == "" || Grade1TF.text == "" || Grade2TF.text == "" || Grade3TF.text == "" || Grade4TF.text == "" || Grade5TF.text == "" || Grade6TF.text == ""
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
                let credit1 = Float(Credits1TF.text!)!
                let credit2 = Float(Credits2TF.text!)!
                let credit3 = Float(Credits3TF.text!)!
                let credit4 = Float(Credits4TF.text!)!
                let credit5 = Float(Credits5TF.text!)!
                let credit6 = Float(Credits6TF.text!)!
                
                let grade1 = Float(Grade1TF.text!)!
                let grade2 = Float(Grade2TF.text!)!
                let grade3 = Float(Grade3TF.text!)!
                let grade4 = Float(Grade4TF.text!)!
                let grade5 = Float(Grade5TF.text!)!
                let grade6 = Float(Grade6TF.text!)!
                
                
                
                let firstgrade = credit1 * grade1
                let secondgrade = credit2 * grade2
                let thirdgrade = credit3 * grade3
                let fourthgrade = credit4 * grade4
                let fifthgrade = credit5 * grade5
                let sixthgrade = credit6 * grade6
                
                
                let allcredits = credit1 + credit2 + credit3 + credit4 + credit5 + credit6
                let allgrades = firstgrade + secondgrade + thirdgrade + fourthgrade + fifthgrade + sixthgrade
                
                let finalgrade = (round((allgrades / allcredits) * 10000)/10000)
                
                GPALabel.text = "Semester GPA: \(finalgrade)"
                GPALabel.hidden = false
                 CumTotal.hidden = true
                
                
                Class1TF.resignFirstResponder()
                Class2TF.resignFirstResponder()
                Class3TF.resignFirstResponder()
                Class4TF.resignFirstResponder()
                Class5TF.resignFirstResponder()
                Class6TF.resignFirstResponder()
                
                Credits1TF.resignFirstResponder()
                Credits2TF.resignFirstResponder()
                Credits3TF.resignFirstResponder()
                Credits4TF.resignFirstResponder()
                Credits5TF.resignFirstResponder()
                Credits6TF.resignFirstResponder()
                
                Grade1TF.resignFirstResponder()
                Grade2TF.resignFirstResponder()
                Grade3TF.resignFirstResponder()
                Grade4TF.resignFirstResponder()
                Grade5TF.resignFirstResponder()
                Grade6TF.resignFirstResponder()
                
                CumCredits.resignFirstResponder()
                CumGPA.resignFirstResponder()
              
                
                }
                
                else
                
                {
                
                let credit1 = Float(Credits1TF.text!)!
                let credit2 = Float(Credits2TF.text!)!
                let credit3 = Float(Credits3TF.text!)!
                let credit4 = Float(Credits4TF.text!)!
                let credit5 = Float(Credits5TF.text!)!
                let credit6 = Float(Credits6TF.text!)!
                
                let grade1 = Float(Grade1TF.text!)!
                let grade2 = Float(Grade2TF.text!)!
                let grade3 = Float(Grade3TF.text!)!
                let grade4 = Float(Grade4TF.text!)!
                let grade5 = Float(Grade5TF.text!)!
                let grade6 = Float(Grade6TF.text!)!
                
                let firstgrade = credit1 * grade1
                let secondgrade = credit2 * grade2
                let thirdgrade = credit3 * grade3
                let fourthgrade = credit4 * grade4
                let fifthgrade = credit5 * grade5
                let sixthgrade = credit6 * grade6
                
                let allcredits = credit1 + credit2 + credit3 + credit4 + credit5 + credit6
                let allgrades = firstgrade + secondgrade + thirdgrade + fourthgrade + fifthgrade + sixthgrade

                let finalgrade = (round((allgrades / allcredits) * 10000)/10000)
                
                let CCredits = Float(CumCredits.text!)!
                let CGPA = Float(CumGPA.text!)!
                
                //top math
                let LastGrade = CCredits * CGPA
                let MegaCredits = allcredits + CCredits
                let MegaGPA = allgrades + LastGrade
                    
                  
                        let MegaEverything = (round((MegaGPA / MegaCredits) * 10000)/10000)
                        
                        CumTotal.hidden = false
                        CumTotal.text = "\(MegaEverything)"
                        GPALabel.text = "\(finalgrade)"
                        GPALabel.hidden = false
                        
          
                
                Class1TF.resignFirstResponder()
                Class2TF.resignFirstResponder()
                Class3TF.resignFirstResponder()
                Class4TF.resignFirstResponder()
                Class5TF.resignFirstResponder()
                Class6TF.resignFirstResponder()
                
                Credits1TF.resignFirstResponder()
                Credits2TF.resignFirstResponder()
                Credits3TF.resignFirstResponder()
                Credits4TF.resignFirstResponder()
                Credits5TF.resignFirstResponder()
                Credits6TF.resignFirstResponder()
                
                Grade1TF.resignFirstResponder()
                Grade2TF.resignFirstResponder()
                Grade3TF.resignFirstResponder()
                Grade4TF.resignFirstResponder()
                Grade5TF.resignFirstResponder()
                Grade6TF.resignFirstResponder()
                
                CumCredits.resignFirstResponder()
                CumGPA.resignFirstResponder()
              
                
            }
            }
            }
            }