
import UIKit

struct CalcResult {
    var bmi: Float
    let bmiValue: String
    let color: UIColor
    let advice: String
    
    init(bmi: Float?) {
        self.bmi = bmi ?? 0.0
        self.bmiValue = String(format: "%.1f", self.bmi)
        if self.bmi < 18.5 {
            self.advice = "You're underweight. Eat more pies!"
            self.color = UIColor.blue
        } else if self.bmi < 24.9 {
            self.advice = "You're normal weight. Fit as a fiddle!"
            self.color = UIColor.green
        } else {
            self.advice = "You're overweight. Eat less pies!"
            self.color = UIColor.systemPink
        }
    }
}
