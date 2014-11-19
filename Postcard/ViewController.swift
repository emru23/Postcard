//
//  ViewController.swift
//  Postcard
//
//  Created by Elaine R on 11/19/14.
//  Copyright (c) 2014 emruda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = "Dear " + nameTextField.text + ", " + enterMessageTextField.text
        messageLabel.textColor = UIColor.darkGrayColor()
       
        nameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

    /* GIT COMMANDS */
    
    /*
    Common terminal commands:

    ls - lists all visible files and directories in the current directory.

    cd Directory\ Name\ With\ Spaces/ - change directory to Directory Name With Spaces. Remember that if your directory has spaces like Directory Name With Spaces make sure to use the proper forward and backslashes.

    mkdir projects - makes a directory called projects

    touch Test - creates an empty file named Test

    --To see these files we use:--

    ls -a - ls allows us to list contents of a file. The addition of the -a flag that tells the list to print out all files and directories even the hidden ones.

    cd .. - allows us to navigate to the directory above the current directory.

    control + c - to abort a long running command entered in terminal.

    cd - by itself will take you back to the home directory.

    rm fileName - removes the file named fileName. Be careful with this, since it won't move our file to the trash. It will permenantely delete it!

    rm -rf fileName - removes directory
    
    */
    
    /*
    Adding Proj to Git:

    Terminal > open project folder
    git add .
    git commit -m "first rev"
    git push -u origin master
    
    */
    
    
}

