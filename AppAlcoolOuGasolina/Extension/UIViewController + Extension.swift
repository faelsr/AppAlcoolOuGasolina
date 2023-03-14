//
//  UIViewController + Extension.swift
//  AppAlcoolOuGasolina
//
//  Created by Rafael Rodrigues on 06/03/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func hideKeyBoardWhenTappedAround() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyBoard() {
        view.endEditing(true)
    }
    
}
