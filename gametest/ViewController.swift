//
//  ViewController.swift
//  gametest
//
//  Created by Robin on 5/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables ----------------------------------------------------------------
    var timer: Timer?
    var yVelocity: Double = 0
    var xVelocity: Double = 0
    var floorBounds = 700.0
    
    //ViewDidLoad --------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: (#selector(ViewController.Update)), userInfo: nil, repeats: true)
    }
    
    //Outlets ------------------------------------------------------------------
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var button: UILongPressGestureRecognizer!
    
    @IBAction func button(_ sender: Any) {
        yVelocity = -20
        print("a")
    }
    
    //@IBAction func button(_ sender: Any) {
    //    yVelocity = -26
    //}
    
    //Functions -----------------------------------------------------------------
    
    func motion() {
        
        //Increase yVelo to simulate gravity
        if self.image.center.y < floorBounds {
            yVelocity += 1
        }
        
        UIView.animate(withDuration: 0, delay: 0, options: .curveLinear, animations: {
            self.image.center.y += self.yVelocity/2
        })
    }
    
    //Update ----------------------------------------------------------------------
    @objc func Update() {
        motion()
    }
    
}
