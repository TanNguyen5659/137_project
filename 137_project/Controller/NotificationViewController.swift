//
//  NotificationViewController.swift
//  137_project
//
//  Created by Duyen Tran on 11/7/20.
//

import UIKit

class NotificationViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    
    
    @IBAction func btnAction(_ sender:UIButton) {
        
        if sender.isSelected == true
        {
            btn1.setImage(UIImage(named: "checked_checkbox"), for: UIControl.State.normal)
            sender.isSelected = false
        }
        else
        {
            btn1.setImage(UIImage(named: "unchecked_checkbox"), for: UIControl.State.normal)
            sender.isSelected = true
        }
    }
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBAction func btnAAction(_ sender: UIButton) {
        
        if sender.isSelected == true
        {
            btn2.setImage(UIImage(named: "checked_checkbox"), for: UIControl.State.normal)
            sender.isSelected = false
        }
        else
        {
            btn2.setImage(UIImage(named: "unchecked_checkbox"), for: UIControl.State.normal)
            sender.isSelected = true
        }
    }
}
