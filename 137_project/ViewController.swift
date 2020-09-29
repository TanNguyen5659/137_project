//
//  ViewController.swift
//  137_project
//
//  Created by Connie Tran on 9/28/20.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "startToHome", sender: nil)
        }
    }
    

}
