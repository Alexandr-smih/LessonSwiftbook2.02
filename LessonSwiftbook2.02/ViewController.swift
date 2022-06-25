//
//  ViewController.swift
//  LessonSwiftbook2.02
//
//  Created by Александр Михалев on 19.06.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLichtLabel: UIView!
    @IBOutlet var yellowLichtLabel: UIView!
    @IBOutlet var greenLichtLabel: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lichtIsOn: CGFloat = 1
    private let lichtIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 15
        
        redLichtLabel.alpha = lichtIsOff
        yellowLichtLabel.alpha = lichtIsOff
        greenLichtLabel.alpha = lichtIsOff
    }

    override func viewWillLayoutSubviews() {
        redLichtLabel.layer.cornerRadius = redLichtLabel.frame.width / 2
        yellowLichtLabel.layer.cornerRadius = yellowLichtLabel.frame.width / 2
        greenLichtLabel.layer.cornerRadius = greenLichtLabel.frame.width / 2
    }
    
    @IBAction func switchButtonTapped() {
        
        switchButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenLichtLabel.alpha = lichtIsOff
            redLichtLabel.alpha = lichtIsOn
            currentLight = .yellow
        case .yellow:
            redLichtLabel.alpha = lichtIsOff
            yellowLichtLabel.alpha = lichtIsOn
            currentLight = .green
        case .green:
            greenLichtLabel.alpha = lichtIsOn
            yellowLichtLabel.alpha = lichtIsOff
            currentLight = .red
        }
    }
    
}

