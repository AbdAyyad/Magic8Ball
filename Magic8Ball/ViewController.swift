//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Abdelrahman Ayyad on 3/15/19.
//  Copyright © 2019 Abdelrahman Ayyad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var arr = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeTheBall()
    }

    func changeTheBall(){
        let idx: Int = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: arr[idx])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeTheBall()
    }
    
    @IBAction func button(_ sender: Any) {
        changeTheBall()
    }
    
}

