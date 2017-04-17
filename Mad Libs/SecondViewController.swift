//
//  SecondViewController.swift
//  Mad Libs
//
//  Created by Thomas Hamburger on 16-04-17.
//  Copyright © 2017 Thomas Hamburger. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var wordsLeftLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    var storyText = Story(stream: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        var contents = String()
        let storyList = ["madlib0_simple", "madlib1_tarzan", "madlib2_university", "madlib3_clothes", "madlib4_dance"]
        let randomIndex = Int(arc4random_uniform(UInt32(storyList.count)))
        if let filepath = Bundle.main.path(forResource: storyList[randomIndex], ofType: "txt") {
            do {
                contents = try String(contentsOfFile: filepath)
            } catch {
                print("contents could not be loaded")
            }
        } else {
            print("example.txt not found")
        }
        
        storyText = Story(stream: contents)
        inputField.placeholder = storyText.getNextPlaceholder()
        wordsLeftLabel.text = "\(storyText.getPlaceholderCount()) words left."
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if inputField.text! != "" {
            storyText.fillInPlaceholder(word: inputField.text!)
            
            if storyText.isFilledIn() {
                self.performSegue(withIdentifier: "StoryScreen", sender: nil)
            } else {
                inputField.text = ""
                inputField.placeholder = storyText.getNextPlaceholder()
                wordsLeftLabel.text = "\(storyText.getPlaceholderRemainingCount()) words left."
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdVC = segue.destination as? ThirdViewController {
            thirdVC.completedStory = storyText.toString()
            storyText.clear()
        }
    }

}
