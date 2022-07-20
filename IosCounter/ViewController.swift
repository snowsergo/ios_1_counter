
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    var count: Int = 0
    
    func setLabel() {
        countLabel.text = "Значение счётчика: \(String(count))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
        clearButton.isHidden = true
    }

    @IBAction func addButtonDidTap(_ sender: Any) {
        count += 1
        setLabel()
        if (count == 1){
            clearButton.isHidden = false
            
        }
    }
    
    @IBAction func clearButtonDidTap(_ sender: Any) {
        count = 0
        setLabel()
        clearButton.isHidden = true
        
    }
}

