
import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var txtGamerName: UITextField!
    @IBOutlet weak var btnStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtGamerName.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @IBAction func btnStartClick(_ sender: Any) {
        LocalStorage.saveGamerName(txtGamerName.text!)
        performSegue(withIdentifier: AppConstants.screens_segue_main_screen, sender: self)
    }
    
    
    // Example: Limit the number of characters
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        print("Text changed: \(textField.text ?? "")")
        
        if let text = textField.text, text.count > 2 {
            showStartGameButton(show: true);
        }
        else{
            showStartGameButton(show: false);
        }
    }
    public func showStartGameButton(show:Bool){
        btnStart.isHidden = !show;
    }
    
}
