//
//  DetailsViewController.swift
//  19_06_24_AlertControllerDemo
//
//  Created by Vishal Jagtap on 31/07/24.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var mainContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = mainContainer
    }
}
