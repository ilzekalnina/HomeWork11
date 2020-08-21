//
//  ViewController.swift
//  HomeWork11
//
//  Created by Kisacka on 21/08/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var yellowButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    var isRed = false
    var isYellow = false
    var isGreen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redButton.layer.cornerRadius = 35
        yellowButton.layer.cornerRadius = 35
        greenButton.layer.cornerRadius = 35
        // Do any additional setup after loading the view.
    }

    @IBAction func nextTapped(_ sender: Any) {
        if !isRed && !isYellow && !isGreen {
            isRed = true
            self.redButton.backgroundColor = UIColor.red
        }
        if isRed {
            isRed = false
            self.redButton.backgroundColor = UIColor.gray
            self.yellowButton.backgroundColor = UIColor.yellow
            isYellow = true
        } else {
            if isYellow {
                isYellow = false
                self.yellowButton.backgroundColor = UIColor.gray
                self.greenButton.backgroundColor = UIColor.green
                isGreen = true
            } else{
                isGreen = false
                self.greenButton.backgroundColor = UIColor.gray
                self.redButton.backgroundColor = UIColor.red
                isRed = true
            }
        }
    }
    
}

