//
//  ViewController.swift
//  Quiz04_trans_Summary
//
//  Created by Derrick on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {

    // fields
    // 과목별 라벨
    @IBOutlet weak var lblSubject: UILabel!
    // 점수
    @IBOutlet weak var txtScore: UITextField!
    
    // 총점
    @IBOutlet weak var lblTotalScore: UILabel!
    // 평균
    @IBOutlet weak var lblaverage: UILabel!
    // 국어
    @IBOutlet weak var lblliterature: UILabel!
    // 영어
    @IBOutlet weak var lblEnglish: UILabel!
    // 수학
    @IBOutlet weak var lblMathmatic: UILabel!
    

    // Message
    @IBOutlet weak var lblMessage: UILabel!
    
    //Array
    var massageArray: [String] = ["","",""]
    var scoreArray:[Int] = [0,0,0]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hidden()
    }
    
    
    // hidden textures
    func hidden(){
        lblMessage.text = ""
    }
    
    // Calculation
    @IBAction func btnCalc(_ sender: Any) {
        
        let check: Int = checkNil(str: txtScore.text!)
       
        if check == 1{
            screenChange()
        }else{
            lblMessage.text = "점수를 입력해 주세요."
            if lblSubject.text == "요약" {
                lblSubject.text = "국어 점수 :"
                txtScore.text = ""
                
                lblTotalScore.text = ""
                lblaverage.text = ""
                lblliterature.text = ""
                lblEnglish.text = ""
                lblMathmatic.text = ""
            }
        }
    }
    
    
    // 화면 전환
    func screenChange(){
        // 국어 점수
        if lblSubject.text == "국어 점수 :"{
            lblMessage.text = ""
            scoreArray[0] = Int(txtScore.text!)!
            lblSubject.text = "영어 점수 :"
            txtScore.text = ""
        }else if lblSubject.text == "영어 점수 :"{
            scoreArray[1] = Int(txtScore.text!)!
            lblSubject.text = "수학 점수 :"
            txtScore.text = ""
        }else if lblSubject.text == "수학 점수 :"{
            scoreArray[2] = Int(txtScore.text!)!
            lblSubject.text = "요약"
            txtScore.text = ""
            summary()
           
        }

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
    
    
    // softkeyboard TouchesBegan function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
    // Summary
    func summary(){
        lblTotalScore.text = "총점은 \(scoreArray[0] + scoreArray[1] + scoreArray[2])입니다."
        lblaverage.text = "평균은 \((scoreArray[0] + scoreArray[1] + scoreArray[2])/3)입니다."
        massageArray[0] = "국어 점수는 \(scoreArray[0])이므로 평균"
        massageArray[1] = "영어 점수는 \(scoreArray[1])이므로 평균"
        massageArray[2] = "수학 점수는 \(scoreArray[2])이므로 평균"
        
        for i in 0...2 {
            if scoreArray[i] > (scoreArray[0] + scoreArray[1] + scoreArray[2])/3 {
                massageArray[i] += "보다 높습니다."
            }else if scoreArray[i] == (scoreArray[0] + scoreArray[1] + scoreArray[2])/3 {
                massageArray[i] += "이랑 같습니다."
            }else{
                massageArray[i] += "보다 낮습니다."
            }
        }
        
        // 결과값 요약때 넣기
        lblliterature.text = massageArray[0]
        lblEnglish.text = massageArray[1]
        lblMathmatic.text = massageArray[2]
    }
    // function switch
    
}

