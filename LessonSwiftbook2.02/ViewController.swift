//
//  ViewController.swift
//  LessonSwiftbook2.02
//
//  Created by Александр Михалев on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let opacity = 0.1

    @IBOutlet var redLichtLabel: UIView!
    @IBOutlet var yellowLichtLabel: UIView!
    @IBOutlet var greenLichtLabel: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLichtLabel.alpha = opacity
        yellowLichtLabel.alpha = opacity
        greenLichtLabel.alpha = opacity
        switchButton.layer.cornerRadius = 15
    }

    @IBAction func switchButtonTapped() {
        
        switchButton.setTitle("Next", for: .normal)
        
        if redLichtLabel.alpha == yellowLichtLabel.alpha {
            redLichtLabel.alpha = 1
            greenLichtLabel.alpha = opacity
        }
        else if redLichtLabel.alpha > opacity && yellowLichtLabel.alpha == greenLichtLabel.alpha {
            yellowLichtLabel.alpha = 1
            redLichtLabel.alpha = opacity
        }
        else if yellowLichtLabel.alpha > opacity && redLichtLabel.alpha == greenLichtLabel.alpha {
            greenLichtLabel.alpha = 1
            yellowLichtLabel.alpha = opacity
        }
    }
    
}

