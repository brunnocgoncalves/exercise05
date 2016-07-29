//
//  ViewController.swift
//  exercise05
//
//  Created by Brunno Goncalves on 26/07/16.
//  Copyright © 2016 brunnogoncalves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var multipleText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBOutlet weak var multipleLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    var multiple: Int = 0
    let times: Int = 3
    var result: Int = 0
    var addTimes: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func startGame(sender: UIButton) {
        if multipleText.text != nil{
            headerImage.hidden = true
            multipleText.hidden = true
            playButton.hidden = true
            
            multipleLabel.hidden = false
            addButton.hidden = false
            
            multiple = Int(multipleText.text!)!
        }
    }


    @IBAction func add(sender: UIButton) {
        if addTimes < times{
            result = addTimes + multiple
            multipleLabel.text = "\(addTimes) + \(multiple) = \(result)"
            addTimes += 1
        }
        else{
            headerImage.hidden = false
            multipleText.hidden = false
            playButton.hidden = false
            
            multipleLabel.hidden = true
            addButton.hidden = true
            
            addTimes = 0
            multipleText.text = nil
            multipleLabel.text = "Press ADD to add!"
        }
    }
}

