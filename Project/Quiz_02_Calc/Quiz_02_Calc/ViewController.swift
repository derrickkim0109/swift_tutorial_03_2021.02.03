//
//  ViewController.swift
//  Quiz_02_Calc
//
//  Created by Derrick on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber1: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    
    @IBOutlet weak var txtAddition: UITextField!
    
    @IBOutlet weak var txtSubtraction: UITextField!
    
    @IBOutlet weak var txtMultiplication: UITextField!
    
    @IBOutlet weak var txtDivisionQuotient: UITextField!
    
    @IBOutlet weak var txtDivisionRemainer: UITextField!
    
    @IBOutlet var viewMain: UIView!
    
    @IBOutlet weak var txtmessage: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Message 빈값 처리
        txtmessage.text = ""
        // Read Only
        readOnly()
    }
    
    @IBAction func btnCalc(_ sender: Any) {
        
        let number1: Int = checkNil(str: txtNumber1.text!)
        let number2: Int = checkNil(str: txtNumber1.text!)
        
        if number1 + number2 != 2{
            txtmessage.text = "숫자를 확인하세요."
            // 틀렸을때 텍스트 필드 다 지우기 위해
            clearText()
        }else{
            calculation()
            txtmessage.text = "계산이 되었습니다."
        }

    }
    
    
    // ReadOnly function
        func readOnly() {
            txtAddition.isUserInteractionEnabled = false
            txtSubtraction.isUserInteractionEnabled = false
            txtMultiplication.isUserInteractionEnabled = false
            txtDivisionQuotient.isUserInteractionEnabled = false
            txtDivisionRemainer.isUserInteractionEnabled = false
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
    
    // Calculation function
    func calculation(){
        txtAddition.text = String(Int(txtNumber1.text!)! + Int(txtNumber2.text!)!)
        txtSubtraction.text = String(Int(txtNumber1.text!)! - Int(txtNumber2.text!)!)
        txtMultiplication.text = String(Int(txtNumber1.text!)! * Int(txtNumber2.text!)!)
        txtDivisionQuotient.text = String(Int(txtNumber1.text!)! % Int(txtNumber2.text!)!)
        txtDivisionRemainer.text = String(Int(txtNumber1.text!)! / Int(txtNumber2.text!)!)
    }
    
    // Screen Clear
    func clearText() {
        
        txtAddition.text = ""
        txtSubtraction.text = ""
        txtMultiplication.text = ""
        txtDivisionQuotient.text = ""
        txtDivisionRemainer.text = ""
    }
    
    
}

