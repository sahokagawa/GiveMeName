//
//  MainViewController.swift
//  LetsNamed
//
//  Created by 香川紗穂 on 2019/10/06.
//  Copyright © 2019 香川紗穂. All rights reserved.
//

import UIKit
import Firebase

class MainViewController: UIViewController {
    
    //入力された名前
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    var imageValue = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        if imageValue == "1" {
            imageView.image = UIImage(named: "1")
        }else if imageValue == "2" {
            imageView.image = UIImage(named: "2")
        }
        
        
    }
    
    
    //OKボタンが押されたら
    @IBAction func toBeforeResult(_ sender: UIButton) {
        
        //FBに接続して登録したい
        let db = Firestore.firestore()
        
        if imageValue == "1" {
            db.collection("Q1").addDocument(data: ["name" : nameText.text as Any])
        }else if imageValue == "2" {
            db.collection("Q2").addDocument(data: ["name" : nameText.text as Any])
        }
       
        
        performSegue(withIdentifier: "toBeforeResult", sender: nil)
    }
    

}
