//
//  ViewController.swift
//  19_06_24_AlertControllerDemo
//
//  Created by Vishal Jagtap on 31/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    


    @IBAction func btnSimpleAlert(_ sender: Any) {
        let uiAlertController = UIAlertController(
            title: "Simple Alert",
            message: "Do you want to Submit?",
            preferredStyle: .alert)
    
        uiAlertController.addTextField { usernameTextField in
            usernameTextField.placeholder = "Enter Name"
        }
        
        uiAlertController.addTextField { passwordTextField in
            passwordTextField.placeholder = "Enter Password"
        }
        
        let okUIAlertAction = UIAlertAction(
                    title: "Submit",
                    style: .default) { action in
                            print(action.title!)
                                                
            let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
                        detailsViewController.mainContainer = uiAlertController.textFields![1].text
                        self.present(detailsViewController, animated: true)
        }
        
        let cancelUIAlertAction = UIAlertAction(
                                            title: "Cancel",
                                            style: .cancel) { action in
                                                print(action.title)
                                            }
        
        uiAlertController.addAction(okUIAlertAction)
        uiAlertController.addAction(cancelUIAlertAction)
        
        self.present(uiAlertController, animated: true)
    }
    
    
    @IBAction func btnActionTextStyle(_ sender: Any) {
        
        let uiActionSheetAlertController = UIAlertController(title: "Action Sheet Style",
                                                             message: "Are you sure?",
                                                             preferredStyle: .actionSheet)
        
        
        let okUIAlertAction = UIAlertAction(title: "OK", style: .default) { action in
            print(action.title!)
        }
        
        let cancelUIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
            print(action.title!)
        }
        
        let submitUIAlertAction = UIAlertAction(title: "Submit", style: .default) { action in
            print(action.title!)
        }
        
        let deleteUIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { action in
            print(action.title!)
        }
        
        uiActionSheetAlertController.addAction(okUIAlertAction)
        uiActionSheetAlertController.addAction(cancelUIAlertAction)
        uiActionSheetAlertController.addAction(submitUIAlertAction)
        uiActionSheetAlertController.addAction(deleteUIAlertAction)
        
        self.present(uiActionSheetAlertController, animated: true)
    }
}

