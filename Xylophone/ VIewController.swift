//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    // Re-wrote the Global var to a Local between line 31-37 code does the same
    //var selectedSoundFileName : String = ""
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7" ]
    
    var soundName : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFileName: soundArray[sender.tag - 1])
      
    }
    func playSound(soundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource : soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        }
    }



