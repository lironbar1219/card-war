
import UIKit

class GameResultsViewController: UIViewController {
    @IBOutlet weak var lblWinnerName: UILabel!
    @IBOutlet weak var lblWinnerScore: UILabel!
    
    var winner: Gamer!;
    override func viewDidLoad() {
        super.viewDidLoad()
        setScreen();
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    func setScreen(){
        lblWinnerName.text = "Winner:\(winner.fullName)"
        lblWinnerScore.text = "Score:\(winner.gameScore)"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
