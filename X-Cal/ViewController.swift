//
//  ViewController.swift
//  X-Cal
//
//  Created by xin on 2023/9/30.
//

import UIKit

class ViewController: UIViewController {

    var tag:Int = 0
    // tag == 1 : plus
    // tag == 2 : sub
    // tag == 3 : mul
    // tag == 4 : div
    // tag == 5 : mod
    var flag:Bool = false
    var temp:Double? = 0.0
    var first:Double = 0.0
    var HistoryExisted:Bool = false
    @IBOutlet weak var OutputNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        OutputNumber.text = "0"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Zero(_ sender: Any) {
        if flag == true {OutputNumber.text = "0"; flag = false;return }
        if temp == nil {OutputNumber.text = "0"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {return}
        OutputNumber.text = OutputNumber.text! + "0"

    }
    private func DigitClick(_ Number: String)
    {
        if flag == true {OutputNumber.text = Number; flag = false;return }
        if temp == nil {OutputNumber.text = Number; return }
        temp = Double(OutputNumber.text!)!
        if (temp == 0.0 && OutputNumber.text?.last != ".") {OutputNumber.text = Number; return}
        OutputNumber.text = OutputNumber.text! + Number
    }
    
    
    @IBAction func One(_ sender: Any) {
        DigitClick("1")
    }
    @IBAction func Two(_ sender: Any) {
        DigitClick("2")
        
    }
    @IBAction func Three(_ sender: Any) {
        DigitClick("3")
    }
    @IBAction func Four(_ sender: Any) {
        DigitClick("4")
    }
    @IBAction func Five(_ sender: Any)
    {
        DigitClick("5")
    }
    @IBAction func Six(_ sender: Any) {
        DigitClick("6")
    }
    @IBAction func Seven(_ sender: Any) {
        DigitClick("7")
    }
    @IBAction func Eight(_ sender: Any) {
        DigitClick("8")
    }
    @IBAction func Nine(_ sender: Any) {
        DigitClick("9")
    }
    @IBAction func AC(_ sender: Any) {
        OutputNumber.text = "0"
        tag = 0
        first = 0
    }
    @IBAction func History(_ sender: Any) {
        if HistoryExisted == false {return}
        // 获取 UserDefaults 实例
        let defaults = UserDefaults.standard

        // 获取存储的数据
        if let RemData = defaults.string(forKey: "RemData") {
            print(RemData)
            OutputNumber.text = RemData
        }

    }
    @IBAction func Mod(_ sender: Any) {
        ClickEqual()
        tag = 5 ; flag = true
        first = Double(OutputNumber.text!)!
    }
    @IBAction func Div(_ sender: Any) {
        ClickEqual()
        tag = 4 ; flag = true
        first = Double(OutputNumber.text!)!
    }
    @IBAction func Mul(_ sender: Any) {
        ClickEqual()
        tag = 3 ; flag = true
        first = Double(OutputNumber.text!)!
    }
    @IBAction func Sub(_ sender: Any) {
        ClickEqual()
        tag = 2 ; flag = true
        first = Double(OutputNumber.text!)!
    }
    @IBAction func Plus(_ sender: Any) {
        ClickEqual()
        tag = 1 ; flag = true
        first = Double(OutputNumber.text!)!
    }
    private func ClickEqual()
    {
        let second = Double(OutputNumber.text!)!
        if tag == 1
        {
            let res = first + second
            OutputNumber.text = String(res)
        }
        if tag == 2
        {
            let res = first - second
            OutputNumber.text = String(res)
        }
        if tag == 3
        {
            let res = first * second
            OutputNumber.text = String(res)
        }
        if tag == 4
        {
            if second == 0.0
            {
                OutputNumber.text = "invaild input"
                print("invaild input")
                return
            }
            let res = first / second
            OutputNumber.text = String(res)
        }
        if tag == 5
        {
            if second == 0.0
            {
                OutputNumber.text = "invaild input"
                print("invaild input")
                return
            }
            let res = first.truncatingRemainder(dividingBy: second)
            OutputNumber.text = String(res)
        }
        
        tag = 0 ; flag = false
    }
    @IBAction func Equal(_ sender: Any) {
        let second = Double(OutputNumber.text!)!
        if tag == 1
        {
            let res = first + second
            OutputNumber.text = String(res)
        }
        if tag == 2
        {
            let res = first - second
            OutputNumber.text = String(res)
        }
        if tag == 3
        {
            let res = first * second
            OutputNumber.text = String(res)
        }
        if tag == 4
        {
            if second == 0.0
            {
                print("invaild input")
                return
            }
            let res = first / second
            OutputNumber.text = String(res)
        }
        if tag == 5
        {
            if second == 0.0
            {
                print("invaild input")
                return
            }
            let res = first.truncatingRemainder(dividingBy: second)
            OutputNumber.text = String(res)
        }
        let defaults = UserDefaults.standard
        defaults.set(OutputNumber.text!,forKey: "RemData")
        HistoryExisted = true
        
        tag = 0 ; flag = false
    }
    @IBAction func Dot(_ sender: Any) {
        if OutputNumber.text?.firstIndex(of: ".") != nil
        {
            return;
        }
        if OutputNumber.text?.last != "."
        {
            OutputNumber.text = OutputNumber.text! + "."
        }
    }
}
