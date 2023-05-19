//
//  ViewController.swift
//  gametest
//
//  Created by Robin on 5/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer?
    var yVelocity: Double = 0
    
//ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: (#selector(ViewController.Update)), userInfo: nil, repeats: true)
    }
    
//Outlets
    @IBOutlet var image: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        yVelocity = -26
    }
    
//Update
    @objc func Update() {
        
        var imageX = image.frame.origin.x
        var imageY = image.frame.origin.y
        
        print(String(yVelocity))
//Update Gravity
        if yVelocity < 26 {
            yVelocity += 1
        }
        
        print(imageY)
        
        if imageY > 700 {
            yVelocity -= 26
        }
        
//Update Motion
        UIView.animate(withDuration: 0, delay: 0, options: .curveLinear, animations: {
            self.image.center.y += CGFloat(self.yVelocity)
            })
    }
}
