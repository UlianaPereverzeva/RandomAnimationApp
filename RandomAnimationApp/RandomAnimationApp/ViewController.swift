//
//  ViewController.swift
//  RandomAnimationApp
//
//  Created by ульяна on 19.12.22.
//

import UIKit
import Spring

class ViewController: UIViewController {

    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var springLabel: UILabel!
    
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    
    
    @IBOutlet weak var firstStack: UIStackView!
    @IBOutlet weak var secondStack: UIStackView!
    @IBOutlet weak var thirdStack: UIStackView!
    @IBOutlet weak var forthStack: UIStackView!
    
    @IBOutlet weak var valueOfForce: UILabel!
    @IBOutlet weak var valueOfDuration: UILabel!
    @IBOutlet weak var valueOfDelay: UILabel!
    @IBOutlet weak var valueOfCurve: UILabel!
    
    @IBOutlet weak var button: SpringButton!
    
    var currentAnimation = AnimationType.shake
    var currentCurve = Curve.spring

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
        setUpButton()
        defaultParameters()
        view.backgroundColor = UIColor(red: 0.42, green: 0.29, blue: 0.88, alpha: 1.00)
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        roundView()
    }

    @IBAction func springChangeAnimationButton(_ sender: SpringButton) {
                
        self.springView.backgroundColor = .random()
        sender.backgroundColor = springView.backgroundColor
        
        firstStack.isHidden = false
        secondStack.isHidden = false
        thirdStack.isHidden = false
        forthStack.isHidden = false
        
        switch currentAnimation{
        case .shake:
            setUpValueOfView()
            springLabel.text = "Shake"
            currentAnimation = .pop
        case .pop:
            setUpValueOfView()
            springLabel.text = "Pop"
            currentAnimation = .morph
        case .morph:
            setUpValueOfView()
            springLabel.text = "Morph"
            currentAnimation = .squeeze
        case .squeeze:
            setUpValueOfView()
            springLabel.text = "Squeeze"
            currentAnimation = .wobble
        case .wobble:
            setUpValueOfView()
            springLabel.text = "Wobble"
            currentAnimation = .swing
        case .swing:
            setUpValueOfView()
            springLabel.text = "Swing"
            currentAnimation = .flipX
        case .flipX:
            setUpValueOfView()
            springLabel.text = "FlipX"
            currentAnimation = .flipY
        case .flipY:
            setUpValueOfView()
            springLabel.text = "FlipY"
            currentAnimation = .fall
        case .fall:
            setUpValueOfView()
            springLabel.text = "Fall"
            currentAnimation = .squeezeLeft
        case .squeezeLeft:
            setUpValueOfView()
            springLabel.text = "SqueezeLeft"
            currentAnimation = .squeezeRight
        case .squeezeRight:
            setUpValueOfView()
            springLabel.text = "SqueezeRight"
            currentAnimation = .squeezeDown
        case .squeezeDown:
            setUpValueOfView()
            springLabel.text = "SqueezeDown"
            currentAnimation = .squeezeUp
        case .squeezeUp:
            setUpValueOfView()
            springLabel.text = "SqueezeUp"
            currentAnimation = .slideLeft
        case .slideLeft:
            setUpValueOfView()
            springLabel.text = "SlideLeft"
            currentAnimation = .slideRight
        case .slideRight:
            setUpValueOfView()
            springLabel.text = "SlideRight"
            currentAnimation = .slideDown
        case .slideDown:
            setUpValueOfView()
            springLabel.text = "SlideDown"
            currentAnimation = .slideUp
        case .slideUp:
            setUpValueOfView()
            springLabel.text = "SlideUp"
            currentAnimation = .fadeIn
        case .fadeIn:
            setUpValueOfView()
            springLabel.text = "FadeIn"
            currentAnimation = .fadeOut
        case .fadeOut:
            setUpValueOfView()
            springLabel.text = "FadeOut"
            currentAnimation = .fadeInLeft
        case .fadeInLeft:
            setUpValueOfView()
            springLabel.text = "FadeInLeft"
            currentAnimation = .fadeInRight
        case .fadeInRight:
            setUpValueOfView()
            springLabel.text = "FadeInRight"
            currentAnimation = .fadeInDown
        case .fadeInDown:
            setUpValueOfView()
            springLabel.text = "FadeInDown"
            currentAnimation = .fadeInUp
        case .fadeInUp:
            setUpValueOfView()
            springLabel.text = "FadeInUp"
            currentAnimation = .zoomIn
        case .zoomIn:
            setUpValueOfView()
            springLabel.text = "ZoomIn"
            currentAnimation = .zoomOut
        case .zoomOut:
            setUpValueOfView()
            springLabel.text = "ZoomOut"
            currentAnimation = .flash
        case .flash:
            setUpValueOfView()
            springLabel.text = "Flash"
            currentAnimation = .shake
        }
        
       
    }
    func setUpLabels() {
        
        curveLabel.text = "Curve"
        forceLabel.text = "Force"
        durationLabel.text = "Duration"
        delayLabel.text = "Delay"
    }
    
        
    func setUpButton() {
        button.layer.cornerRadius = 20
        button.titleLabel?.text = "Change animation"
        button.backgroundColor = UIColor(red: 0.60, green: 0.71, blue: 0.25, alpha: 1.00)
    }
    
    func defaultParameters() {
        
        springView.backgroundColor = UIColor(red: 0.60, green: 0.71, blue: 0.25, alpha: 1.00)
        springLabel.text = "Hi, put on button:)"
        
        firstStack.isHidden = true
        secondStack.isHidden = true
        thirdStack.isHidden = true
        forthStack.isHidden = true

    }
    
    private func roundView() {
        let cornerRadius = springView.frame.width / 2
        springView.layer.cornerRadius = cornerRadius
    }
    
    func setUpCurve() {
        springView.curve = currentCurve.rawValue
        valueOfCurve.text = "\(currentCurve)"
    }
    
    
    func setUpValueOfView() {
        
        springView.animation = currentAnimation.rawValue
        
        switch currentCurve {
        case .spring:
            setUpCurve()
            currentCurve = .linear
        case .linear:
            setUpCurve()
            currentCurve = .easeIn
        case .easeIn:
            setUpCurve()
        currentCurve = .easeOut
        case .easeOut:
            setUpCurve()
        currentCurve = .easeInOut
        case .easeInOut:
            setUpCurve()
        currentCurve = .spring
        }
        
    
    let force = CGFloat(Int.random(in: 1...2))
    springView.force = force
    valueOfForce.text = "\(force)"
    
    let duration = CGFloat(Int.random(in: 1...2))
    springView.duration = duration
    valueOfDuration.text = "\(duration)"
    
    let delay = CGFloat(Int.random(in: 1...2))
    springView.delay = delay
    valueOfDelay.text = "\(delay)"
    
    springView.animate()
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
