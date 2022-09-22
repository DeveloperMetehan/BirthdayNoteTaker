//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Gappze on 11.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let name2 = storedName as? String {
            nameLabel.text = name2
        }
        
        if let birthday2 = storedBirthday as? String {
            birthdayLabel.text = birthday2
            
        }
        
    }

    @IBAction func willSaveWhenClick(_ sender: Any) {
   
        UserDefaults.standard.set(textField1.text! , forKey: "name")
        UserDefaults.standard.set(textField2.text! , forKey: "birthday")
        
        nameLabel.text = "name : " + textField1.text!
        birthdayLabel.text = "birthday : " + textField2.text!
    
    
    }
    
    @IBAction func deleteWhenClick(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let name1 = storedName as? String {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "name : "
            textField1.text = ""
        }
        if let birthday1 = storedBirthday as? String {
            UserDefaults.standard.object(forKey: "birthday")
            birthdayLabel.text = "birthday: "
            textField2.text = ""
        }
        
        
    }
}

