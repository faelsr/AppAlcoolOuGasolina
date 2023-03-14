//
//  HomeScreen.swift
//  AppAlcoolOuGasolina
//
//  Created by Rafael Rodrigues on 02/01/23.
//

import UIKit

protocol HomeScreenDelegate: AnyObject {
    func tappedStartButtom()
}

class HomeScreen: UIView {
    
    private weak var delegate: HomeScreenDelegate?
    
    public func delegate(delegate: HomeScreenDelegate) {
        self.delegate = delegate
    }
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BG HOME")
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView ()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var startButtom: UIButton = {
       let buttom = UIButton ()
        buttom.translatesAutoresizingMaskIntoConstraints = false
        buttom.setTitle("Começar", for: .normal)
        buttom.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        buttom.setTitleColor(.white, for: .normal)
        buttom.clipsToBounds = true
        buttom.layer.cornerRadius = 8
        buttom.backgroundColor = UIColor(red: 230/255, green: 0/255, blue: 217/255, alpha: 1.0)
        buttom.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
        return buttom
    }()
    
    @objc func tappedStartButton () {
        delegate?.tappedStartButtom()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImageView)
        addSubview(logoAppImageView)
        addSubview(startButtom)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
        
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 104),           
            logoAppImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            logoAppImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            startButtom.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -125),
            startButtom.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            startButtom.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            startButtom.heightAnchor.constraint(equalToConstant: 44)
           ])
    }
    
}
