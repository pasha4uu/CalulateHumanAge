//
//  ViewController.swift
//  CalulateHumanAge
//
//  Created by PASHA on 11/08/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogAgeTF: UITextField!
    
    @IBOutlet weak var ageLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateHumanAge(_ sender: Any) {
        
        if dogAgeTF.text != "" {
            
            let dogAge = Int(dogAgeTF.text!)
            
            ageLbl.text = "Human age is : \(calculateAge(dogAge: dogAge!))"
        }
      else
        {
          ageLbl.text = "Please enter Dog Age"
        }
        
    }
    
    func calculateAge(dogAge:Int) -> Int {
        
        var humanAge = 0
        
        
        if dogAge == 1{
            humanAge = 15
        }
        else if dogAge == 2 {
            
            humanAge = 24
        }
        else {
            
            humanAge = ((dogAge - 2) * 4) + 24
            
        }
        return humanAge
    }

}

