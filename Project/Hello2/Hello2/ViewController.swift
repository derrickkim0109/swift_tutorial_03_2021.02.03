//
//  ViewController.swift
//  Hello2
//
//  Created by Derrick on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblWelcome: UILabel!
    
    // 제일 처음 실행하는 것.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //_ 되있으니까 안보일것이다.
    @IBAction func btnName(_ sender: UIButton) {
        lblWelcome.text = "Hello Derrick"
    }
    
}

