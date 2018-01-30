//
//  SignUp-Login.swift
//  UrbanBarberTest
//
//  Created by kevin campbell on 1/29/18.
//  Copyright © 2018 n28. All rights reserved.
//

import Foundation
class SignUpLogIn {
    
    func signUP(userName: String, password:String) {
        let user = PFUser()
        user.username = userName
        user.password = password
        user.email = userName
        
        user.signUpInBackground { (Bool, error) in
            if let error = error {
                let errorString = error.localizedDescription
                  print(errorString)
                
            } else {
                print("yeah it worked")
                
            }
        }
        
    }

    func logIn(userName: String, password:String){
        PFUser.logInWithUsername(inBackground: userName, password: password) { (user, error) in
            if let error = error {
                let errorString = error.localizedDescription
                print(errorString)
                
            } else {
                print("login yeah it worked")
                
            }
        }
        
    }


}
