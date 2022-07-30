
import UIKit

class CalcViewController: UIViewController {
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calcBrain = CalcBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValue.text = "\(height)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightValue.text = "\(weight)kg"
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calcBrain.calcBMI(height, weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calcBrain.getBMIValue()
            destinationVC.advice = calcBrain.getAdvice()
            destinationVC.color = calcBrain.getBackgroundColor()
        }
    }
}

