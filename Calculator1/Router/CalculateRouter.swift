import Foundation
import UIKit

class CalculateRouter {
    func reDirectToHistoryPage(view: UIViewController, listItem: DataListItem){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let goToHistoryPage = storyboard.instantiateViewController(withIdentifier: "HistoryPage") as! HistoryVC
        goToHistoryPage.listItem = listItem
        view.navigationController?.pushViewController(goToHistoryPage, animated: true)
    }
}
