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
    @IBOutlet weak var yourNameTextField: UITextField!
    
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
        messageLabel.text = "Hi " + nameTextField.text
            + ",\r" + enterMessageTextField.text
            + "\rFrom,\r" + yourNameTextField.text
        messageLabel.textColor = UIColor.darkGrayColor()
       
        nameTextField.text = ""
        enterMessageTextField.text = ""
        yourNameTextField.text = ""
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
    
    git add . - stages your changes for the next commit.
    
    git commit -m "messageName" - commit the staged files to the the repository with the message: messageName.
    
    git remote add origin https://github.com/userName/nameOfRepository - Sets up our local repository to be pushed to our github repository. We set our remote name to origin and a repository URL after.
    
    git push -u origin master - The push command tells git where to put our commited files. Origin is the name of our remote and the default branch we'll be using is master. The -u tells git to remember the parameters.
    
    */
    
    /*
    Export Proj from Git:
    Git clone https://github.com/userName/repositoryName

    */
    
}

