

import UIKit

class NavigationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigate();
    }
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    func navigate(){
      
        if (LocalStorage.getGamerName() != nil) {
            performSegue(withIdentifier: AppConstants.screens_segue_main_screen, sender: self)
        }
        else{
            performSegue(withIdentifier: AppConstants.screens_segue_register_screen, sender: self)
        }
    }
    

    
}
