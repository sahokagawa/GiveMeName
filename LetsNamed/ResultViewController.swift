//
//  ResultViewController.swift
//  LetsNamed
//
//  Created by 香川紗穂 on 2019/10/06.
//  Copyright © 2019 香川紗穂. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func didClickTopButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toTop", sender: nil)
    }
    

}
