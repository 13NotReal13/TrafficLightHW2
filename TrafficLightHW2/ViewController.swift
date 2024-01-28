//
//  ViewController.swift
//  TrafficLightHW2
//
//  Created by Иван Семикин on 27/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layoutIfNeeded()
        redColorView.layer.cornerRadius = min(
            redColorView.bounds.width,
            redColorView.bounds.height
        ) / 2.0
        yellowColorView.layoutIfNeeded()
        yellowColorView.layer.cornerRadius = min(
            yellowColorView.bounds.width,
            yellowColorView.bounds.height
        ) / 2.0
        greenColorView.layoutIfNeeded()
        greenColorView.layer.cornerRadius = min(
            greenColorView.bounds.width,
            greenColorView.bounds.height
        ) / 2.0
        changeColorButton.layer.cornerRadius = 10
    }

    @IBAction func changeColorButtonDidTupped() {
        if redColorView.alpha == 1 {
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
        } else if yellowColorView.alpha == 1 {
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
        } else {
            redColorView.alpha = 1
            greenColorView.alpha = 0.3
            changeColorButton.setTitle("NEXT", for: .normal)
        }
    }
    
}

