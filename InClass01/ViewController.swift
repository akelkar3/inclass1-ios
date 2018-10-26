//
//  ViewController.swift
//  InClass01
//
//  Created by Ankit Kelkar on 10/17/18.
//  Copyright © 2018 Ankit Kelkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.welcomeLabel.text = "Hey! from Code!"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! viewController2
        vc.name = self.textInput.text!
        let tempUser = User(name:"john doe",dep: "cci")
        vc.user=tempUser
    }
    @IBAction func onClick(_ sender: Any) {
        let value = self.textInput.text
        print("Need some Change!\(value)")
        self.welcomeLabel.text = value;
        self.performSegue(withIdentifier: "goToNextView", sender: self)
    }
    
}

