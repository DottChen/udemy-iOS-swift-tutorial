
import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var tipPerPerson: String?
    var waiterNum: String?
    var tipPercent: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingLabel.text = "Split between \(waiterNum!) people, with \(tipPercent!) tip."
        resultLabel.text = tipPerPerson
    }
    
    @IBAction func recalcButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
