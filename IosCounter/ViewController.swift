
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    var count: Int = 0
    
    func setLabel() {
        countLabel.text = "Значение счётчика: \(count)"
        clearButton.isHidden = count == 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    @IBAction func addButtonDidTap(_ sender: Any) {
        count += 1
        setLabel()
    }
    @IBAction func clearButtonDidTap(_ sender: Any) {
        count = 0
        setLabel()
    }
}

