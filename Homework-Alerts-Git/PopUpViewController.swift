//
//  PopUpViewController.swift
//  Homework-Alerts-Git
//
//  Created by Alex Kagarov on 4/1/19.
//  Copyright © 2019 Alex Kagarov. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    @IBOutlet weak var messageVIew: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageVIew.layer.cornerRadius = 25
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        moveIn()
    }
    
    @IBAction func closePopUpBtn(_ sender: UIButton) {
        moveOut()
    }
    
    func moveIn() {
        self.view.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
        self.view.alpha = 0.0
        
        UIView.animate(withDuration: 0.24) {
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.view.alpha = 1.0
        }
    }
    
    func moveOut() {
        UIView.animate(withDuration: 0.24, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
            self.view.alpha = 0.0
        }) { _ in
            self.view.removeFromSuperview()
        }
    }
}
