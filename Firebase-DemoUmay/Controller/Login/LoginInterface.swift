//
//  LoginInterface.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 18/12/22.
//

import UIKit
import FirebaseAuth

enum AccountState {
  case existingUser
  case newUser
}

//-----------------------------------------------------------------------------------------------------------------------------------------------
class LoginInterface: UIViewController {

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelSubTitle: UILabel!
    @IBOutlet var imageViewLogo: UIImageView!
    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    @IBOutlet var buttonHideShowPassword: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    private var accountState: AccountState = .existingUser


    override func viewDidLoad() {

        super.viewDidLoad()
        
        clearErrorLabel()

        textFieldEmail.setLeftPadding(value: 15)
        textFieldPassword.setLeftPadding(value: 15)
        textFieldPassword.setRightPadding(value: 40)

        loadData()
    }

    // MARK: - Data methods
    func loadData() {

       // labelTitle.text = "Welcome to\nAppDesignKit"
       // labelSubTitle.text = "An exciting place for the whole family to shop."
    }

    // MARK: - User actions
    @IBAction func actionHideShowPassword(_ sender: Any) {
        buttonHideShowPassword.isSelected = !buttonHideShowPassword.isSelected
        textFieldPassword.isSecureTextEntry = !buttonHideShowPassword.isSelected
    }

    @IBAction func actionLogin(_ sender: Any) {
        print("login press...")
        guard let email = textFieldEmail.text,
          !email.isEmpty,
          let password = textFieldPassword.text,
          !password.isEmpty else {
            print("missing fields")
            return
        }
        continueLoginFlow(email: email, password: password)
    //    dismiss(animated: true)
    }
    
    
    
    private func continueLoginFlow(email: String, password: String) {
        AuthenticationSession.shared.signExistingUser(email: email, password: password) { [weak self] (result) in
          switch result {
          case .failure(let error):
            DispatchQueue.main.async {
              self?.errorLabel.text = "\(error.localizedDescription)"
              self?.errorLabel.textColor = .systemRed
            }
          case .success:
            DispatchQueue.main.async {
                  self?.navigateToMainView()
//                self?.errorLabel.textColor = .systemGreen
//                self?.errorLabel.text = "Welcom back User with email: \(String(describing: authDataResult.user.email))"
            }
          }
        }
    }
    
    
    
    private func navigateToMainView() {
        let dinamisXIB = TabBarController()
        dinamisXIB.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(dinamisXIB, animated: true)
    }
    
    
    
    private func clearErrorLabel() {
      errorLabel.text = ""
    }

    @IBAction func actionForgotPassword(_ sender: Any) {

        print(#function)
        dismiss(animated: true)
    }

    @IBAction func actionSignUp(_ sender: Any) {
        let newSignup = Signup()
        newSignup.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(newSignup, animated: true)
        print("SignUp...")

        //dismiss(animated: true)
    }
}
