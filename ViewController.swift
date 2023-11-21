//
//  ViewController.swift
//  Contest
//
//  Created by Andrew Higbee on 11/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        
        if email.isEmpty {
            UIView.animate(withDuration: 0.5) { self.emailTextField.transform = CGAffineTransform(translationX: 10, y: 10)}
            UIView.animate(withDuration: 0.3) {
                self.emailTextField.transform = CGAffineTransform.identity }
        } else {
            performSegue(withIdentifier: "emailEntered", sender: UIButton.self)
        }
        }

    
}

/*
 UIView.animate(withDuration: 0.5) {
     self.albumImageView.transform =
        CGAffineTransform(scaleX: 0.8, y: 0.8)
 }
 */

/*
 {
  self.albumImageView.transform = CGAffineTransform.identity
}, completion: nil)
 */
