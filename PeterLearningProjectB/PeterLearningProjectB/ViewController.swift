//
//  ViewController.swift
//  PeterLearningProjectB
//
//  Rune Stone App

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var IBOLabel1: UILabel!
    
    @IBAction func IBOButton1(_ sender: Any) {
        print("BUTTON 1 action")
        IBOLabel1.text = IBOTextField.text;
        UserDefaults.standard.set(IBOTextField.text, forKey: "MyName")
        IBOTextField.text = ""
        
    }
    
    @IBOutlet weak var IBOTextField: UITextField!
    
    override func viewDidAppear(_ animated: Bool) {
        
        if let x = UserDefaults.standard.object(forKey: "MyName") as? String{
            IBOLabel1.text = x
        }
    }
    
    
}

