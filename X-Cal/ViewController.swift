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
    
    @IBAction func One(_ sender: Any) {
        if flag == true {OutputNumber.text = "1"; flag = false;return }
        if temp == nil {OutputNumber.text = "1"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "1"; return}
        OutputNumber.text = OutputNumber.text! + "1"
    }
    @IBAction func Two(_ sender: Any) {
        if flag == true {OutputNumber.text = "2"; flag = false;return }
        if temp == nil {OutputNumber.text = "2"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "2"; return}
        OutputNumber.text = OutputNumber.text! + "2"
        
    }
    @IBAction func Three(_ sender: Any) {
        if flag == true {OutputNumber.text = "3"; flag = false;return }
        if temp == nil {OutputNumber.text = "3"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "3"; return}
        OutputNumber.text = OutputNumber.text! + "3"
    }
    @IBAction func Four(_ sender: Any) {
        if flag == true {OutputNumber.text = "4"; flag = false;return }
        if temp == nil {OutputNumber.text = "4"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "4"; return}
        OutputNumber.text = OutputNumber.text! + "4"
    }
    @IBAction func Five(_ sender: Any)
    {
        if flag == true {OutputNumber.text = "5"; flag = false;return }
        if temp == nil {OutputNumber.text = "5"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "5"; return}
        OutputNumber.text = OutputNumber.text! + "5"
    }
    @IBAction func Six(_ sender: Any) {
        if flag == true {OutputNumber.text = "6"; flag = false;return }
        if temp == nil {OutputNumber.text = "6"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "6"; return}
        OutputNumber.text = OutputNumber.text! + "6"
    }
    @IBAction func Seven(_ sender: Any) {
        if flag == true {OutputNumber.text = "7"; flag = false;return }
        if temp == nil {OutputNumber.text = "7"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "7"; return}
        OutputNumber.text = OutputNumber.text! + "7"
    }
    @IBAction func Eight(_ sender: Any) {
        if flag == true {OutputNumber.text = "8"; flag = false;return }
        if temp == nil {OutputNumber.text = "8"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "8"; return}
        OutputNumber.text = OutputNumber.text! + "8"
    }
    @IBAction func Nine(_ sender: Any) {
        if flag == true {OutputNumber.text = "9"; flag = false; return }
        if temp == nil {OutputNumber.text = "9"; return }
        temp = Double(OutputNumber.text!)!
        if temp == 0.0 {OutputNumber.text = "9"; return}
        OutputNumber.text = OutputNumber.text! + "9"
    }
    @IBAction func AC(_ sender: Any) {
        OutputNumber.text = "0"
        tag = 0
        first = 0
    }
    @IBAction func Reverse(_ sender: Any) {
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
        
        tag = 0 ; flag = false
    }
    @IBAction func Dot(_ sender: Any) {
        if OutputNumber.text?.last != "."
        {
            OutputNumber.text = OutputNumber.text! + "."
        }
    }
}
