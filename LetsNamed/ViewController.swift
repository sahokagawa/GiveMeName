//
//  ViewController.swift
//  LetsNamed
//
//  Created by 香川紗穂 on 2019/10/06.
//  Copyright © 2019 香川紗穂. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.adjustsFontSizeToFitWidth = true
        startButton.titleLabel?.adjustsFontSizeToFitWidth = true
        resultButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
    }
    //問題ページへ
    @IBAction func didClickShowButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toAllQestion", sender: nil)
    }
    
    
    //結果ページへ
    @IBAction func didClickResultButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toAllResult", sender: nil)
    }
    
}

