//
//  viewController2.swift
//  InClass01
//
//  Created by Ankit Kelkar on 10/17/18.
//  Copyright © 2018 Ankit Kelkar. All rights reserved.
//

import UIKit

class viewController2: UIViewController {
    var name:String = ""
    var user:User?
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user?.name;
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closeClick(_ sender: Any) {
        self.dismiss(animated: true) {
            print("just disnmissed a view!")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
