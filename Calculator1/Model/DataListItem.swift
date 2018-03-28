import Foundation

struct EquationModel{
    var result: String
    var leftNumber: String
    var rightNumber: String
    var operatorType: String
    
    init(result:String,leftNo:String,rightNo:String,oper:String) {
        self.leftNumber = leftNo
        self.result = result
        self.rightNumber = rightNo
        self.operatorType = oper
    }
}

struct DataListItem{
    var listOfHistory = [EquationModel]()
}

