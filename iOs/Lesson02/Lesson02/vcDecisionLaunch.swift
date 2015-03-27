//
//  vcDecisionLaunch.swift
//  Lesson02
//
//  Created by Stephen Shellenberger on 3/26/15.
//  Copyright (c) 2015 Riding the ShortBus. All rights reserved.
//

import UIKit

class vcDecisionLaunch: UIViewController {
    @IBOutlet weak var lcchoiceText: UITextField!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func actionChoicemade(sender: AnyObject)
    {
        /*
        1. get the value in the choice text
        2. check to see if the choiec text is blank
        3. check to see if the choice text is 1 or 2
        4. if choice text is a 1 go to LC01
        5. if choice text is a 2 go to LC02
        */
        var choicetextval:NSString = self.lcchoiceText.text;
        
        if(choicetextval != "")
        {
            if(choicetextval == "1")
            {
                self.performSegueWithIdentifier("idsegueLes02_LC01", sender: self);
            }
            else if(choicetextval == "2")
            {
                self.performSegueWithIdentifier("idsegueLes02_LC02", sender: self);
            }
            else
            {
                var alert = UIAlertController(title: "Lara is Waiting", message: "Only enter a 1 or 2", preferredStyle: UIAlertControllerStyle.Alert);
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil);
            }
        }
        else
        {
            var alert = UIAlertController(title: "Choice Issue", message: "Please Choose 1 or 2 for your Lara!", preferredStyle: UIAlertControllerStyle.Alert);
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil);
        }
    }
}

