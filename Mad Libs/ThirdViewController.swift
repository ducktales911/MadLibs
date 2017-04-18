//
//  ThirdViewController.swift
//  Mad Libs
//
//  Created by Thomas Hamburger on 17-04-17.
//  Copyright © 2017 Thomas Hamburger. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var storyTextView: UITextView!
    var completedStory: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextView.text = completedStory!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
