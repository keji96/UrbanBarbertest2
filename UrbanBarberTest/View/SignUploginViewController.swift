//
//  ViewController.swift
//  UrbanBarberTest
//
//  Created by kevin campbell on 1/21/18.
//  Copyright © 2018 n28. All rights reserved.
//

import UIKit
import Parse
import ParseFacebookUtilsV4
import ParseTwitterUtils

class SignUploginViewController: UIViewController {
   
    
    @IBOutlet weak var passwordbox: UITextField!
    
    @IBOutlet weak var emailLoginbox: UITextField!
    
    @IBAction func manualLogIn(_ sender: Any) {
      let userName = emailLoginbox.text
      let password = passwordbox.text
        SignUpLogIn().logIn(userName: userName!, password: password!)
        
    }
    
    @IBAction func login(_ sender: Any) {
        let permissions = [ "public_profile" ]
        PFFacebookUtils.logInInBackground(withReadPermissions: permissions) { (user, error) in
            if let user = user {
                if user.isNew {
                    print("User signed up and logged in through Facebook!")
                } else {
                    print("User logged in through Facebook!")
                }
            } else {
                print("Uh oh. The user cancelled the Facebook login.")
            }
        }
    
    }
    
    
    
    @IBAction func twitterLogInSignUp(_ sender: Any) {
   
        PFTwitterUtils.logIn { (user, error) in
            if let user = user {
                if user.isNew {
                    print("User signed up and logged in with Twitter!")
                } else {
                    print("User logged in with Twitter!")
                }
            } else {
                print("Uh oh. The user cancelled the Twitter login.")
            }
        }
    
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextBoxDesign().addPaddingAndBorder(to: emailLoginbox, placeholder:"Email Address")
        TextBoxDesign().addPaddingAndBorder(to: passwordbox, placeholder:"Password")
        
    }

   

    
    
    
    func getBarberdata(){
        let getData = PFQuery(className:"Barbers")
        getData.whereKey("BarbersName", equalTo:"Kevin Campbell")
        getData.findObjectsInBackground(block: { (objects, error) in
            if error != nil {
                print (error as Any)
                
            }else{
                //let barbershopName =
                print (objects![0]["BarbersName"]
                    as Any)
            }
        })
        //print(barberName)
    }

    func saveBarberData(){
        let saveData = PFObject(className:"Barbers")
        saveData["BarbersName"] = "test"
        saveData["BarbersPhoneNumber"] = "2035555555"
        saveData["BarbershpName"] = "Test Barbershop"
        saveData.saveInBackground {
            (success: Bool, error: Error?) in
            if (success) {
                // The object has been saved.
                
                print("it worked")
            } else {
                // There was a problem, check error.description
                
                print(error as Any)
            }
        }
        
    }

}

