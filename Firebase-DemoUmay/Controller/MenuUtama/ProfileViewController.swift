//
//  ProfileViewController.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 19/12/22.
//

import UIKit
import FirebaseAuth

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var displayNameTextField: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        updateUI()
        
    }
    

    private func updateUI() {
        guard let user = Auth.auth().currentUser else {
            return
        }
        
        emailLabel.text = user.email
        
        //user.displayName
        //user.email
        //user.phoneNumber
        //user.photoURL
        
    }
    
    
    @IBAction func signOutButtonPressed(_ sender: UIButton) {
      do {
        try Auth.auth().signOut()
          let dinamisXIB = LoginInterface()
         // let dinamisXIB = LoginInterface(nibName: "LoginInterface", bundle: nil)
          dinamisXIB.modalPresentationStyle = .fullScreen
          navigationController?.pushViewController(dinamisXIB, animated: true)
      } catch {
        DispatchQueue.main.async {
          self.showAlert(title: "Error signing out", message: "\(error.localizedDescription)")
        }
      }
        
        print("Keluar....")
    }

}
