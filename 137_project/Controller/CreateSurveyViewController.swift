//
//  CreateSurveyViewController.swift
//  137_project
//
//  Created by Duyen Tran on 11/7/20.
//

import UIKit

class CreateSurveyViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        if sender.isSelected == true
        {
            btn.setImage(UIImage(named: "checked_checkbox"), for: UIControl.State.normal)
            sender.isSelected = false
        }
        else
        {
            btn.setImage(UIImage(named: "unchecked_checkbox"), for: UIControl.State.normal)
            sender.isSelected = true
        }
    }
}
