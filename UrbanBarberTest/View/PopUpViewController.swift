//
//  PopUpViewController.swift
//  Bolts
//
//  Created by kevin campbell on 1/29/18.
//

import UIKit

class PopUpViewController: UIViewController {

   
    @IBOutlet weak var emailSignUpBox: UITextField!
    
    @IBOutlet weak var passwordSignUpBox: UITextField!
    
    override func viewDidLoad() {
        TextBoxDesign().addPaddingAndBorder(to: emailSignUpBox, placeholder:"Email Address")
        TextBoxDesign().addPaddingAndBorder(to: passwordSignUpBox, placeholder:"Password")
    
    }
    
    
    @IBAction func actualSignUpButton(_ sender: Any) {
        let email = emailSignUpBox.text
        let password = passwordSignUpBox.text
        SignUpLogIn().signUP(userName: email!, password: password!)
    

    }
    
    
    @IBAction func cancelSignUpAction(_ sender: Any) {
      dismiss(animated: true, completion: nil)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
