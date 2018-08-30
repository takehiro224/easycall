//
//  ViewController.swift
//  easycall
//
//  Created by Watanabe Takehiro on 2018/08/28.
//  Copyright © 2018年 Watanabe Takehiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var searchImageView: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var funcButton: UIButton!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var memberCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func funcButtonTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "main->edit", sender: nil)
    }
    
}

//
extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memberCell", for: indexPath) as? MemberCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.isSelected = true
        cell.memberName.text = "永江ユウキ\(indexPath.row)"
        cell.memberImageView.layer.cornerRadius = cell.memberImageView.frame.height / 2
        cell.memberView.layer.cornerRadius = 10
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tap \(indexPath.row)")
        self.performSegue(withIdentifier: "main->call", sender: nil)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 96)
    }
    
}
