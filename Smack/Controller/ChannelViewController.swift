//
//  ChannelViewController.swift
//  Smack
//
//  Created by Kudryatzhan Arziyev on 12/13/17.
//  Copyright © 2017 Kudryatzhan Arziyev. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var loginButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.revealViewController().rearViewRevealWidth = view.frame.size.width - 60
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
}
