import Foundation

protocol ICalculator:class {
    func onResult(convertResult:String)
}

class CalculatePresenter: NSObject{
    
    var callBack: ICalculator
    
    
    init(_ view:ICalculator){
        self.callBack = view
    }
    
    func targetOperator(target: String, input1:String, input2:String){
        let textfield1: Double = Double(input1)!
        let textfield2: Double = Double(input2)!
        var convert: String = ""
        switch target {
        case "+":
            convert = String(textfield1 + textfield2)
            callBack.onResult(convertResult: convert)
        case "-":
            convert = String(textfield1 - textfield2)
            callBack.onResult(convertResult: convert)
        case "*":
            convert = String(textfield1 * textfield2)
            callBack.onResult(convertResult: convert)
        case "/":
            convert = String(textfield1 / textfield2)
            callBack.onResult(convertResult: convert)
        default:
            convert = "0"
        }
    }
}
