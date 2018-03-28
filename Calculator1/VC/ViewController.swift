//
//  ViewController.swift
//  Calculator1
//
//  Created by chayarak on 26/3/2561 BE.
//  Copyright © 2561 chayarak. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ICalculator{
    
    func onResult(convertResult: String) {
        let modelPrepare = EquationModel(result: convertResult, leftNo: input1.text!, rightNo: input2.text!, oper: target)
        
        listOfHistorys.listOfHistory.append(modelPrepare)
        
        submitLabel.text = convertResult
    }
    

    var listItemPageCalculate:[String] = []
    var target = ""
    var listOfHistorys:DataListItem = DataListItem()
    lazy var presenter = CalculatePresenter(self)
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var submitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func calculateNumber(_ sender: Any) {
        if checkEmpty(){
            presenter.targetOperator(target: target, input1: input1.text!, input2: input2.text!)
        }
    }
    
    @IBAction func goToPageHistory(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let goToHistoryPage = storyboard.instantiateViewController(withIdentifier: "HistoryPage") as! HistoryVC
        goToHistoryPage.listItem = listOfHistorys
        navigationController?.pushViewController(goToHistoryPage, animated: true)
    }
    
    func checkEmpty() -> Bool{
        if input1.text == "" || input2.text == "" || target == ""{
            return false
        }
        return true
    }
    
    @IBAction func minusCalculate(_ sender: Any) {
        target = "-"
        input2.becomeFirstResponder()
    }
    
    @IBAction func sumCalculate(_ sender: Any) {
        target = "+"
        input2.becomeFirstResponder()
    }
    
    @IBAction func multiCalculate(_ sender: Any) {
        target = "*"
        input2.becomeFirstResponder()
    }
    
    @IBAction func devideCalculate(_ sender: Any) {
        target = "/"
        input2.becomeFirstResponder()
    }

    func clearAllFill(){
        input1.text = ""
        input2.text = ""
        target = ""
    }
}

