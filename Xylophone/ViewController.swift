//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        print( sender.currentTitle)
        
        //sender.currentTitle은 String?(옵셔널)이기 때문에 !을 통해 Unwrapping 해줌
        playSound(code: sender.currentTitle!)
    }
    
    func playSound(code :String) {
        let url = Bundle.main.url(forResource: code, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
