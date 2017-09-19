//
//  ViewController.swift
//  ZingMP3
//
//  Created by Van Ho Si on 9/19/17.
//  Copyright © 2017 Van Ho Si. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        logo.alpha = 0
        logoText.alpha = 0
        fullname.alpha = 0
        
//        print("viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        print("viewWillAppear")
        
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.logo.alpha = 1
        }) { (finished) in
            UIView.animate(withDuration: 1, animations: {
                self.logoText.center = CGPoint(x: self.logo.center.x, y: 50)
                self.logoText.alpha = 1
            }) { (finished) in
                UIView.animate(withDuration: 1, animations: {
                    self.fullname.alpha = 1
                    self.fullname.center = CGPoint(x: self.logo.center.x, y: 600)
                })
            }
        
        }
    }


    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var logoText: UILabel!
    
    @IBOutlet weak var fullname: UILabel!
    
    
    
}

