
import UIKit

struct CalcBrain {
    var calcResult: CalcResult?
    
    mutating func calcBMI(_ height: Float, _ weight: Float) {
        let bmi: Float? = weight / pow(height, 2)
        calcResult = CalcResult(bmi: bmi)
    }
    
    func getBackgroundColor() -> UIColor{
        return calcResult?.color ?? .white
    }
    
    func getBMIValue() -> String {
        return calcResult?.bmiValue ?? "0.0"
    }
    
    func getAdvice() -> String {
        return calcResult?.advice ?? "No advice, thank you."
    }
}
