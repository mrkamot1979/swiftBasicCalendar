//
//  ViewController.swift
//  Basic Calendar
//
//  Created by Nino Rorudan on 8/18/17.
//  Copyright © 2017 The NTMC Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lblMonth: UILabel!
    
    //Array
    var arrayMonths:[String] =
    [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
    ]
    
    //variable to keep track of current array placement
    var placement = 0
    
    
    
    
    
    @IBAction func btnBack(_ sender: Any)
    {
        if placement != 0
        {
            placement -= 1
            lblMonth.text = arrayMonths[placement]
            
        }
        
    }
    
    @IBAction func btnForward(_ sender: Any)
    {
       placement += 1
        
        if placement == 12
        {
            placement = 0
        }
        lblMonth.text = arrayMonths[placement]
        

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

