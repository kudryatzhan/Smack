//
//  ChatViewController.swift
//  Smack
//
//  Created by Kudryatzhan Arziyev on 12/13/17.
//  Copyright © 2017 Kudryatzhan Arziyev. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var menuButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
    }
}
