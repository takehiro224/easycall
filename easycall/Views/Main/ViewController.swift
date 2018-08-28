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
        cell.memberName.text = "永江ユウキ\(indexPath.row)"
        return cell
    }

    
}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}
