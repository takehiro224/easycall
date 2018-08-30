//
//  CallViewController.swift
//  easycall
//
//  Created by Watanabe Takehiro on 2018/08/29.
//  Copyright © 2018年 Watanabe Takehiro. All rights reserved.
//

import UIKit

class CallViewController: UIViewController {

    @IBOutlet weak var dialogView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dialogView.layer.cornerRadius = 20
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func callButtonTapped(_ sender: UIButton) {
    }
    
}
