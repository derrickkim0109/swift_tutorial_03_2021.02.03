//
//  ViewController.swift
//  Quiz01_Click_Name_text
//
//  Created by Derrick on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var count:Int = 0
    
    @IBAction func btnName(_ sender: Any) {
        if count == 0 {
            lblWelcome.text = "Welcome!\tDerrick"
            count += 1
        }else{
            lblWelcome.text = "Welcome"
            count = 0
        }
    }
    
}

