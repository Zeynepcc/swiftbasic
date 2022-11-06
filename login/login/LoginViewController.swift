//
//  LoginViewController.swift
//  login
//
//  Created by Zeynep Turhan on 5.11.2022.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var Txtmail: UITextField!
    @IBOutlet weak var Txtpass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func register(_ sender: UIButton) {
    }
    
    @IBAction func login(_ sender: Any) {
        let lvc = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        lvc.mail = Txtmail.text!
        lvc.password = Txtpass.text!
        self.navigationController?.pushViewController(lvc, animated: true)
    }
    
}
