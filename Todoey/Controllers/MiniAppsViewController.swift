import UIKit

class MiniAppsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func bmiCalculatorTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToBMICalculator", sender: self)
    }
    
    @IBAction func calculatorTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToCalculator", sender: self)
    }

    @IBAction func eggTimerTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToEggTimer", sender: self)
    }
    
}
