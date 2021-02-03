//
//  ViewController.swift
//  TextName
//
//  Created by Derrick on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    //fields
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var txtName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // TextField에서 text를 받아 Label의 text로 전달
    @IBAction func btnName(_ sender: UIButton) {
        lblWelcome.text = "Welcome \(txtName.text!)"
    }
    // Label을 초기값으로 변경, TextField의 값은 지운다.
    @IBAction func btnClear(_ sender: UIButton) {
        lblWelcome.text = "Welcome!"
        txtName.text?.removeAll()
        // text 지우는 것이다. 
    }
}

