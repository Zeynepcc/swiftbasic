//
//  ViewController.swift
//  login
//
//  Created by Zeynep Turhan on 4.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sayac: UILabel!
    
    var counter = 5
    var timer:Timer?
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            sayac.text = String(counter)
            counter -= 1
        }
        else if  counter == 0{
            
            timer?.invalidate()
            let send = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(send, animated: true)

 
            
        }
    }
}
    


