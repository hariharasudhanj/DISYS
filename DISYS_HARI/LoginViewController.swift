//
//  LoginViewController.swift
//  DISYS_HARI
//
//  Created by Hariharasudhan J on 20/01/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldUserName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        //check empty validations
        if textFieldUserName.text?.isEmpty ?? true ||  textFieldPassword.text?.isEmpty ?? true{
            let alert = UIAlertController(title: "Error", message: "Please Enter Username/Password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
          
            return
            
        }
        let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "vc") as? ViewController
        vc?.hidesBottomBarWhenPushed = true
        self.present(vc!, animated: true, completion: nil)

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
