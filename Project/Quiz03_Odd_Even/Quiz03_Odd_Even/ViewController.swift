//
//  ViewController.swift
//  Quiz03_Odd_Even
//
//  Created by Derrick on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text = ""
    }
    
    @IBAction func btnCheck(_ sender: UIButton) {
        
        let number: Int = checkNil(str: txtNumber.text!)
        
        if number == 1 {
            lblMessage.text = checkNum(str: txtNumber.text!)
        }else{
            lblMessage.text = "숫자를 입력하세요.!"
        }
        
    }
    
    
    
    // softkeyboard TouchesBegan function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
    // nil check function
    func checkNil(str: String!) ->Int{
        //whitespacesAndNewlines -> space + enter
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty {
            return 0
        }else{
            return 1
        }
    }

    func checkNum(str:String!) ->String{
        if Int(str)! % 2 == 0 {
         return "입력하신 숫자는 짝수 입니다."
        }else{
            return "입력하신 숫자는 홀수 입니다."
        }
    }
    
}

