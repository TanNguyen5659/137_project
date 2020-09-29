//
//  SetupViewController.swift
//  137_project
//
//  Created by Connie Tran on 9/28/20.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var passwordConf: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailAddress.delegate = self
        passwordConf.delegate = self
        passwordField.delegate = self
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        if passwordField.text != passwordConf.text{
            let errorAlert = UIAlertController(title: "Mismatched passwords!", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            errorAlert.addAction(defaultAction)
            self.present(errorAlert, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: emailAddress.text!, password: passwordField.text!)
            { (user, error) in
                if error == nil {
                   self.performSegue(withIdentifier: "toHomefromSignUp", sender: self)
                }
                else{
                    let errorAlert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    errorAlert.addAction(defaultAction)
                    self.present(errorAlert, animated: true, completion: nil)
                }
            }
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }

}
