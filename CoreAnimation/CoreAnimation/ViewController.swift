//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Huy Pham on 3/30/21.
//  Copyright © 2021 LuyenDao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var images: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images.isUserInteractionEnabled = true
        click()
    }
    
    func click() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        tapGestureRecognizer.numberOfTouchesRequired = 1
        images.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func addPulse() {
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: images.center)
        pulse.animationDuration = 0.9
        pulse.backgroundColor = UIColor.red.cgColor
        pulse.autoreverses = .random()
        
        self.view.layer.insertSublayer(pulse, below: images.layer)
    }


}

