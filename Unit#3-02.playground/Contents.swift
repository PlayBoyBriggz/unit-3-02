// Created on: October 9th 2018 
// Created by: Christian Briglio 
// Created for: ICS3U
// This program checks if you guessed the number right  
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let NUMBER_TO_GUESS : Int = Int(arc4random_uniform(10) + 1)
    
    let instructionLabel = UILabel()
    let numberTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "pick a number between 1-10."
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Enter #"
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkNumber), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumber() {
        // check if there are too many students in the class 
        
        //input
        let numberEntered : Int = Int(numberTextField.text!)!
        
        // process
        if numberEntered == NUMBER_TO_GUESS {
            //output
            answerLabel.text = "Yes, good guess!"
            
        } else {
            answerLabel.text = "No, guess again! The number is \(NUMBER_TO_GUESS)"
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()


