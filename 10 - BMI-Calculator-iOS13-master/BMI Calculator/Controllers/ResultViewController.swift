
import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    
    @IBAction func recalcButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

    



}
