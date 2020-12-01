//
//  RoundedButton.swift
//  137_project
//
//  Created by Tan Nguyen on 11/27/20.
//

import UIKit

class RoundedButton: UIButton {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 5.0
        layer.masksToBounds = true
    }


}
