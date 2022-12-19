//
//  UIViewController+Navigation.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 19/12/22.
//

import UIKit

extension UIViewController {
  
  private static func resetWindow(with rootViewController: UIViewController) {
    guard let scene = UIApplication.shared.connectedScenes.first,
      let sceneDelegate = scene.delegate as? SceneDelegate,
      let window = sceneDelegate.window else {
        fatalError("could not reset window rootViewController")
    }
    window.rootViewController = rootViewController
  }
    
  public static func showViewController() {
      let newVC = ProfileViewController()
      resetWindow(with: newVC)
    }
  
  public static func showVC(viewcontroller: UIViewController) {
    resetWindow(with: viewcontroller)
  }
  
}

