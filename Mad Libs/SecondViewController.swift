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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func nextButton(_ sender: Any) {
        if inputField.text! != "" {
            self.performSegue(withIdentifier: "StoryScreen", sender: nil)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
