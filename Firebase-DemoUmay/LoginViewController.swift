//
//  ViewController.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 17/12/22.
//

import UIKit
import FirebaseAuth

//enum AccountState {
//  case existingUser
//  case newUser
//}

class LoginViewController: UIViewController {
  
  @IBOutlet weak var errorLabel: UILabel!
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var accountStateMessageLabel: UILabel!
  @IBOutlet weak var accountStateButton: UIButton!
  
//  private var accountState: AccountState = .existingUser
  
  override func viewDidLoad() {
    super.viewDidLoad()
    clearErrorLabel()
  }
  
  @IBAction func loginButtonPressed(_ sender: UIButton) {
//      print("login press...")
//      guard let email = emailTextField.text,
//        !email.isEmpty,
//        let password = passwordTextField.text,
//        !password.isEmpty else {
//          print("missing fields")
//          return
//      }
//      continueLoginFlow(email: email, password: password)
  }
    
//    private func continueLoginFlow(email: String, password: String) {
//      if accountState == .existingUser {
//        AuthenticationSession.shared.signExistingUser(email: email, password: password) { [weak self] (result) in
//          switch result {
//          case .failure(let error):
//            DispatchQueue.main.async {
//              self?.errorLabel.text = "\(error.localizedDescription)"
//              self?.errorLabel.textColor = .systemRed
//            }
//          case .success(let authDataResult):
//            DispatchQueue.main.async {
//             // self?.navigateToMainView()
//                self?.errorLabel.textColor = .systemRed
//                self?.errorLabel.text = "Welcom back User with email: \(String(describing: authDataResult.user.email))"
//            }
//          }
//        }
//      } else {
//        AuthenticationSession.shared.createNewUser(email: email, password: password) { [weak self] (result) in
//          switch result {
//          case .failure(let error):
//            DispatchQueue.main.async {
//              self?.errorLabel.text = "\(error.localizedDescription)"
//              self?.errorLabel.textColor = .systemRed
//            }
//          case .success(let authDataResult):
//              DispatchQueue.main.async {
//               // self?.navigateToMainView()
//                  self?.errorLabel.textColor = .systemGreen
//                  self?.errorLabel.text = "Hope You enjoy, Email used \(String(describing: authDataResult.user.email))"
//              }
//            // create a database user only from a new authenticated account
//            //self?.createDatabaseUser(authDataResult: authDataResult)
//          }
//        }
//      }
//    }
    
    
    
    
    @IBAction func loginBaru(_ sender: Any) {
        let newLogin = LoginInterface()
        newLogin.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(newLogin, animated: true)
        print("newLogin...")
        
    }
    
    

  private func clearErrorLabel() {
    errorLabel.text = ""
  }
  
  @IBAction func toggleAccountState(_ sender: UIButton) {
    // change the account login state
//    accountState = accountState == .existingUser ? .newUser : .existingUser
//
//    // animation duration
//    let duration: TimeInterval = 1.0
//
//    if accountState == .existingUser {
//      UIView.transition(with: containerView, duration: duration, options: [.transitionFlipFromRight], animations: {
//        self.loginButton.setTitle("Login", for: .normal)
//        self.accountStateMessageLabel.text = "Don't have an account ? Click"
//        self.accountStateButton.setTitle("SIGNUP", for: .normal)
//      }, completion: nil)
//    } else {
//      UIView.transition(with: containerView, duration: duration, options: [.transitionFlipFromLeft], animations: {
//        self.loginButton.setTitle("Sign Up", for: .normal)
//        self.accountStateMessageLabel.text = "Already have an account ?"
//        self.accountStateButton.setTitle("LOGIN", for: .normal)
//      }, completion: nil)
//    }
  }

}
