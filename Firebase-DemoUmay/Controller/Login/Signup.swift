//
//  Signup.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 18/12/22.
//

import UIKit

class Signup: UIViewController {

    @IBOutlet var imageViewProfile: UIButton!
    @IBOutlet var textFieldFullName: UITextField!
    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet var viewProfile: UIView!

    override func viewDidLoad() {

        super.viewDidLoad()
        //title = "Sign Up"
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: viewProfile)
       // navigationItem.rightBarButtonItem = UIBarButtonItem(customView: viewProfile)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .done, target: self, action: #selector(actionClose))
        
        clearErrorLabel()

        //textFieldFullName.setLeftPadding(value: 15)
        textFieldEmail.setLeftPadding(value: 15)
        textFieldPassword.setLeftPadding(value: 15)
    }

    // MARK: - User actions
    //-------------------------------------------------------------------------------------------------------------------------------------------
    @objc func actionClose() {

        let newLogin = LoginInterface()
        newLogin.modalPresentationStyle = .popover
        navigationController?.pushViewController(newLogin, animated: true)
        print("backToLogin...")
        dismiss(animated: true)
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    @IBAction func actionImagePick(_ sender: Any) {

        print(#function)
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    @IBAction func actionCreateAccount(_ sender: Any) {
        print("login press...")
        guard let email = textFieldEmail.text,
          !email.isEmpty,
          let password = textFieldPassword.text,
          !password.isEmpty else {
            print("missing fields")
            return
        }
        continueLoginFlow(email: email, password: password)

        
        //print(#function)
    }
    
    
    
    private func continueLoginFlow(email: String, password: String) {
        AuthenticationSession.shared.createNewUser(email: email, password: password) { [weak self] (result) in
          switch result {
          case .failure(let error):
            DispatchQueue.main.async {
              self?.errorLabel.text = "\(error.localizedDescription)"
              self?.errorLabel.textColor = .systemRed
            }
          case .success(let authDataResult):
              DispatchQueue.main.async {
               // self?.navigateToMainView()
                  self?.errorLabel.textColor = .systemGreen
                  self?.errorLabel.text = "Hope You enjoy, Email used \(String(describing: authDataResult.user.email))"
              }
          }
        }
    }
    
    
    
    private func clearErrorLabel() {
      errorLabel.text = ""
    }

    

    //-------------------------------------------------------------------------------------------------------------------------------------------
    @IBAction func actionTerms(_ sender: Any) {

        print(#function)
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    @IBAction func actionPrivacy(_ sender: Any) {

        print(#function)
    }

    //-------------------------------------------------------------------------------------------------------------------------------------------
    @IBAction func actionHaveAccount(_ sender: Any) {
        let newLogin = LoginInterface()
        newLogin.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(newLogin, animated: true)
        print("backToLogin...")

    }
}
