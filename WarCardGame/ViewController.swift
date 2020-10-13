import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore = 0;
    var CPUScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }

    @IBAction func dealTapped(_ sender: Any) {
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14);
        let rightNumber = Int.random(in: 2...14);

        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)");
        rightImageView.image = UIImage(named: "card\(rightNumber)");
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            // Player wins
            playerScore += 1;
            leftScoreLabel.text = String(playerScore);
        }
        else if (leftNumber < rightNumber) {
            // CPU wins
            CPUScore += 1;
            rightScoreLabel.text = String(CPUScore);
        }
        else {
            // Tie
        }
    }
    
}

