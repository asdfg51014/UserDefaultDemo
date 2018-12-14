//
//  ViewController.swift
//  UserDefaultPractice
//
//  Created by Albert on 2018/12/14.
//  Copyright © 2018 Albert.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userDefault = UserDefaults()
    
    @IBOutlet var showMessageLabel: UILabel!
    
    @IBOutlet var myMessageTextField: UITextField!
    
    @IBAction func saveMessageButton(_ sender: UIButton) {
        userDefault.setValue(myMessageTextField.text, forKey: "Message")
    }
    
    @IBAction func readMessageButton(_ sender: UIButton) {
        showMessageLabel.text = userDefault.value(forKey: "Message") as! String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

