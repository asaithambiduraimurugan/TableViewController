//
//  ViewController.swift
//  TableViewController
//
//  Created by mymac on 06/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButtonOne(){
        let vc = MyTableViewController()
        
        vc.model = []
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func didTapButtonTwo(){
        let vc = MyTableViewController()
        
        vc.model = [
            ("one", {
                print("first is tapped")
            }),
            ("two",{
                print("second is tapped")
            })]
        navigationController?.pushViewController(vc, animated: true)
    }

}

