//
//  ViewController.swift
//  gametest
//
//  Created by Robin on 5/11/23.
//

import UIKit

class ViewController: UIViewController {

    var Velocity = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(Velocity)
    }
    
    @IBOutlet var image: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        print("Velo+=18")
    }
    
}
