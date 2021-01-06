//
//  ViewController.swift
//  PreWork
//
//  Created by Alan Bergsneider on 1/5/21.
//

import UIKit

func randomCGFloat() -> CGFloat {
return CGFloat(arc4random()) / CGFloat(UInt32.max)}

extension UIColor {
    static func randomColor() -> UIColor {
        let r = randomCGFloat()
        let g = randomCGFloat()
        let b = randomCGFloat()
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeTextColor(sender: UIButton) {
        self.textLabel.textColor = UIColor.randomColor()
    }
    @IBAction func changeBackgroundColor(sender: UIButton) {
        view.backgroundColor = UIColor.randomColor()
    }
    @IBAction func changeTextContent(sender: UIButton) {
        if let text = textField.text, !text.isEmpty {
            textLabel.text = text
        } else {
            let sayings = ["How was your day?", "It's cold out.", "Howdy!", "Stylish App!", "Nice color scheme!"]
            textLabel.text = sayings.randomElement()!
        }
        view.endEditing(true)
        textField.text = ""
    }
    @IBAction func tapReset(_ sender: Any) {
        textLabel.text = "Hello from Alan!"
        textLabel.textColor = UIColor.black
        view.backgroundColor = UIColor(red: 229/255.0, green: 229/255.0, blue: 234/255.0, alpha: 1.0)
    }
    
}

