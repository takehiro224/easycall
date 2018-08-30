//
//  EditViewController.swift
//  easycall
//
//  Created by Watanabe Takehiro on 2018/08/29.
//  Copyright © 2018年 Watanabe Takehiro. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextView: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var memberView: UIView!
    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var memberImageButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func memberImageButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
    }
    
}
