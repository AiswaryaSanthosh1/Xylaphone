//
//  ViewController.swift
//  Xylaphone
//
//  Created by Aiswarya Santhosh on 09/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audio : AVAudioPlayer!
    var soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPresse(_ sender: UIButton) {
        let selectedSound = soundArray[(sender.tag) - 1]
        playingSound(choosedSound: selectedSound)
    }
    
    func playingSound(choosedSound : String){
        let soundurl = Bundle.main.url(forResource: choosedSound, withExtension: ".wav")
        
        do{
            try audio = AVAudioPlayer(contentsOf: soundurl!)
            audio.prepareToPlay()
            audio.play()
        }
        catch{
            print(error)
        }
    }
    
}

