//
//  FrontController.swift
//  GPA Calculator
//
//  Created by Jonathan Gardocki on 2/6/16.
//  Copyright © 2016 Jonathan Gardocki. All rights reserved.
//

import UIKit

class FrontController: UIViewController {
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //background color of nav bar
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        //translucent green
        self.navigationController?.navigationBar.translucent = true
        //no words after the back button
       self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
        // Top button is "Spartan GPA"
       self.navigationController?.navigationBar.topItem?.title = "Spartan GPA"
        //nav bar title attributes
       self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Sansation-Regular", size: 26)!, NSForegroundColorAttributeName: UIColor.blackColor()]
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
       
 
        
       
    // UIColor(red: 24/255.0, green: 70/255.0, blue: 59/255.0, alpha: 1.0)
 

        
        button2.backgroundColor = UIColor.clearColor()
        button2.layer.cornerRadius = 1
        button2.layer.borderWidth = 2
        button2.layer.borderColor = UIColor.whiteColor().CGColor
       
        button3.backgroundColor = UIColor.clearColor()
        button3.layer.cornerRadius = 1
        button3.layer.borderWidth = 2
        button3.layer.borderColor = UIColor.whiteColor().CGColor
       
        button4.backgroundColor = UIColor.clearColor()
        button4.layer.cornerRadius = 1
        button4.layer.borderWidth = 2
        button4.layer.borderColor = UIColor.whiteColor().CGColor
        
        button5.backgroundColor = UIColor.clearColor()
        button5.layer.cornerRadius = 1
        button5.layer.borderWidth = 2
        button5.layer.borderColor = UIColor.whiteColor().CGColor
        
        button6.backgroundColor = UIColor.clearColor()
        button6.layer.cornerRadius = 1
        button6.layer.borderWidth = 2
        button6.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
  
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func infoButton(sender: AnyObject) {
        let title = "Welcome to Spartan GPA!"
        let message = "As a quick note, all semester and cumulative GPAs are rounded. In most circumstances, please allow a .0001 margin of error when reviewing your semester GPA and a .001 margin of error for the cumulative GPA."
        let okText = "OK"
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okayButton = UIAlertAction(title: okText, style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(okayButton)
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    

    

}
