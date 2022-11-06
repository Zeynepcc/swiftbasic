//
//  ResultViewController.swift
//  login
//
//  Created by Zeynep Turhan on 6.11.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var sonuc: UILabel!
    var mail = ""
    var password = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if mail == "bilgeis@projectgroup.com" && password == "iOSProgramlama"
        {
            sonuc.text = "Doğru giriş"
        }
        else
        {
            sonuc.text = "Yanlış Giriş"
        }
           

       }

    }
