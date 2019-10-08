//
//  TableViewController.swift
//  LetsNamed
//
//  Created by 香川紗穂 on 2019/10/06.
//  Copyright © 2019 香川紗穂. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
  
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        switch section {
        case 0:
            return 2
        default:
            return 0
        }
    }

    //セルがクリックされたら
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //イモムシみたいなやつ
        if indexPath.section == 0 && indexPath.row == 0 {
             performSegue(withIdentifier: "toMain", sender: "1")
        //まだ書いてない
        }else if indexPath.section == 0 && indexPath.row == 1 {
            performSegue(withIdentifier: "toMain", sender: "2")
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMain" {
            let nextVC = segue.destination as! MainViewController
            nextVC.imageValue = sender as! String
        }
    }
}
