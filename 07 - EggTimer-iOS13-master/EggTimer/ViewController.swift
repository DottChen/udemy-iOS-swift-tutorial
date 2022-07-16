//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var secondsRemaining: Int?
    var timerProgressInterval: Double?
    var timerText = Timer()
    var timerProgress = Timer()
    var player: AVAudioPlayer!
    let soundUrl = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")


    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        let allSeconds = eggTimes[hardness]! * 1
        progressBar.progress = 1.0
        secondsRemaining = allSeconds
        timerProgressInterval = 1.0 / Double(allSeconds * 1000)
        
        titleLabel.text = "After \(secondsRemaining!) seconds, you can have an egg."
    
        timerText.invalidate()
        timerText = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(updateTimerText),
                                     userInfo: nil,
                                     repeats: true)
        
        timerProgress.invalidate()
        timerProgress = Timer.scheduledTimer(timeInterval: 0.001,
                                             target: self,
                                             selector: #selector(updateTimerProgress),
                                             userInfo: nil,
                                             repeats: true)
    }
    
    
    @objc func updateTimerText() {
        
        if secondsRemaining! > 1 {
            secondsRemaining! -= 1
            titleLabel.text = "After \(secondsRemaining!) seconds, you can have an egg."
        } else if secondsRemaining! == 1 {
            secondsRemaining! -= 1
            titleLabel.text = "Here you go! Enjoy the meal!"
            player = try! AVAudioPlayer(contentsOf: soundUrl!)
            player.play()
        } else {
            timerText.invalidate()
        }
    }
    
    @objc func updateTimerProgress() {
        if secondsRemaining! > 0 {
            progressBar.progress -= Float(timerProgressInterval!)
        
        } else {
            progressBar.progress = 0.0
            timerProgress.invalidate()
        }
    }
    
}
