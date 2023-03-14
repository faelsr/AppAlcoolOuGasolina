//
//  HomeVC.swift
//  AppAlcoolOuGasolina
//
//  Created by Rafael Rodrigues on 02/01/23.
//

import UIKit

class HomeVC: UIViewController {

    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        screen?.delegate(delegate: self)
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}

extension HomeVC: HomeScreenDelegate {
    func tappedStartButtom() {
    let vc = CalculatorVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
