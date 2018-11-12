// Created on: 12-Nov-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program converts a letter grade to a middle percentage
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let numberTextField = UITextField()
    let convertButton = UIButton ()
    let answerLabel = UILabel()
    
    func calculateGrade(gradeEntered : String) -> Int{
        //  
        
        var gradeValue : Int = 0
        
            if gradeEntered == "4+" {
                gradeValue = 97
            }
            else if gradeEntered == "4" {
                gradeValue = 91
            }
            else if gradeEntered == "4-" {
                gradeValue = 83
            }
            else if gradeEntered == "3+" {
                gradeValue = 78
            }
            else if gradeEntered == "3" {
                gradeValue = 75
            }
            else if gradeEntered == "3-" {
                gradeValue = 71
            }
            else if gradeEntered == "2+" {
                gradeValue = 68
            }
            else if gradeEntered == "2" {
                gradeValue = 65
            }
            else if gradeEntered == "2-" {
                gradeValue = 61
            }
            else if gradeEntered == "1+" {
                gradeValue = 58
            }
            else if gradeEntered == "1" {
                gradeValue = 55
            }
            else if gradeEntered == "1-" {
                gradeValue = 51
            }
            else if gradeEntered == "R" {
                gradeValue = 25
            }
            else {
                gradeValue = -1
            }
        
        return gradeValue
    }
        
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Please enter your letter grade and we will tell you its percentage."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "   "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        numberTextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        convertButton.setTitle("Convert", for: UIControlState.normal)
        convertButton.setTitleColor(.blue, for: .normal)
        convertButton.addTarget(self, action: #selector(convertingGrade), for: .touchUpInside)
        view.addSubview(convertButton)
        convertButton.translatesAutoresizingMaskIntoConstraints = false
        convertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        convertButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func convertingGrade() {
        //  
        
        var grade : String 
        grade = (numberTextField.text!)
        
        var percentage = calculateGrade(gradeEntered: String(grade))
        
        answerLabel.text = "Your marks percentage is \(percentage)%"
    }
        override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
