
import UIKit

class CalcViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumLabel: UILabel!
    
    var caclBrain = CalcBrain()
    var billText: String?
    var tipPercent: Float = 0.0
    var waiterNum: Int = 1
    
//    override func viewDidLoad() {
//        billTextField.becomeFirstResponder()
//    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        sender.isSelected = true
        billTextField.endEditing(true)
        
        if sender.titleLabel?.text! == "0%" {
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipPercent = 0.0
            
        } else if sender.titleLabel?.text! == "10%" {
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipPercent = 0.1
            
        } else if sender.titleLabel?.text! == "20%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            tipPercent = 0.2
            
        } else {
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            tipPercent = 0.0
        }
    }
    
    
    @IBAction func splitNumSteeperPressed(_ sender: UIStepper) {
        billTextField.endEditing(true)
        splitNumLabel.text = String(Int(sender.value))
        waiterNum = Int(sender.value)
    }
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        billText = billTextField.text
        let billTotal: Float
        if billText == nil || billText == "" {
            billTotal = 0.0
        } else {
            billTotal = Float(billText!)!
        }
        caclBrain.calcBill(billTotal: billTotal, tipPercent: tipPercent, waiterNum: waiterNum)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.tipPerPerson = caclBrain.getTipPerPerson()
            destinationVC.tipPercent = caclBrain.getTipPercent()
            destinationVC.waiterNum = caclBrain.getWaiterNum()
        }
    }
}

