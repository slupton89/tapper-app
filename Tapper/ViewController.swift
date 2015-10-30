//
//  ViewController.swift
//  Tapper
//
//  Created by Shane Lupton on 10/30/15.
//  Copyright © 2015 Shane Lupton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        
        //currentTaps = currentTaps + 1
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
        
        
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        self.resignFirstResponder()
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
        
    }

    
    func restartGame() {
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playButton.hidden = false
        howManyTapsTxt.text = ""
        
        tapButton.hidden = true
        tapsLabel.hidden = true
        
        maxTaps = 0
    }
    
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
        return true
        
        } else {
          return false
        }
        
    }
}