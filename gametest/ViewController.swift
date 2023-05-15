//
//  ViewController.swift
//  gametest
//
//  Created by Robin on 5/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var image: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        print("Velo+=18")
    }
    
    var Velocity = 0
    print(Velocity)
    
}
