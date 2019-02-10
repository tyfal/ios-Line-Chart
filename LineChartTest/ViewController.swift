//
//  ViewController.swift
//  LineChartTest
//
//  Created by Tyler Falcoff on 1/24/19.
//  Copyright © 2019 Tyler Falcoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LineChart: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        drawSeries(CurrentVC: LineChart, ySeries: [7.0, 2.0, 4.0, 3.0, 4.0, 6.0, 4.0, 3.0, 1.0, 12.0, 10.0])
        
    }
    
}


