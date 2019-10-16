//
//  ViewController.swift
//  DictionariesChallenge
//
//  Created by Brian Boitano on 6/10/16.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    /***************************************************
    * Start Your Code Here For MVP
    ***************************************************/
    var addressBook :Dictionary <String,String> = ["name":"Emily", "address":"21 Derbyshire Ln", "city":"Arlington Heights", "state":"IL", "zip":"60004"]
    
    /***************************************************
    * End Your Code Here For MVP
    ***************************************************/

        override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = addressBook["name"]
        addressLabel.text = addressBook["address"]
        cityLabel.text = addressBook["city"]
        stateLabel.text = addressBook["state"]
        zipLabel.text = addressBook["zip"]
    }

    @IBAction func stretchOnePressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        addressBook["phone number"] = "000-000-0000"
        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/
        var output:String = ""

        for (key,value) in addressBook
        {
            //Uncomment the line below for Stretch #1 <----

            output += (key + ":" + value + "\n")
        }

        myTextView.text = output
    }

    @IBAction func stetchTwoPressed(_ sender: UIButton) {

        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
        addressBook.removeValue(forKey: "state")
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        var output:String = ""

        for (key,value) in addressBook
        {
            //Uncomment the line below for Stretch #2 <---

            output += (key + ":" + value + "\n")
        }

        myTextView.text = output
    }

    @IBAction func stretchThreePressed(_ sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #3
        ***************************************************/
        var addressKeys: Array = [""]
        addressKeys.append(contentsOf: addressBook.keys)
        var addressValues: Array = [""]
        addressValues.append(contentsOf: addressBook.values)
        /***************************************************
        * End Your Code Here For Stretch #3
        ***************************************************/
        var output:String = ""

        for x in 0 ..< addressBook.count
        {
            //Uncomment the line below for Stretch #3 <----

            output += addressKeys[x] + " has a value of " + addressValues[x] + "\n"
        }

        myTextView.text = output
    }
}
