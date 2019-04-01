//
//  ViewController.swift
//  Homework-Alerts-Git
//
//  Created by Alex Kagarov on 4/1/19.
//  Copyright © 2019 Alex Kagarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alertBtn: UIButton!
    @IBOutlet weak var actionSheetBtn: UIButton!
    @IBOutlet weak var destrucAlertBtn: UIButton!
    @IBOutlet weak var multipleActionsBtn: UIButton!
    @IBOutlet weak var textFieldAlertBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func firstBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "First alert", message: "Simple alert", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func secondBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "Second alert", message: "Simple Action Sheet", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        alert.addAction(UIAlertAction(title: "destructive", style: .destructive, handler: nil))
    }
    @IBAction func thirdBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "Third alert", message: "Alert with destructive option", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "destructive", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func fourthBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "Fourth alert", message: "Alert with 3 actions", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "destructive", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func fifthBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "Fifth alert", message: "Alert with text field", preferredStyle: .alert)
        alert.addTextField { (textField) in textField.placeholder = "input some text"
        }
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            let textField = alert.textFields![0] as UITextField
            let otherAlert = UIAlertController(title: "Alert in alert", message: "Your text: \(textField.text!)", preferredStyle: .alert)
            otherAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(otherAlert, animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    

}

