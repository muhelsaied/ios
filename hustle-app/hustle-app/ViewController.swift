//
//  ViewController.swift
//  hustle-app
//
//  Created by Muhammad Elsaied on 6/14/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var mainBG: UIImageView!
    @IBOutlet weak var hustlerBtn: UIButton!
    
    @IBOutlet weak var secBg: UIView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    @IBOutlet weak var rocket: UIImageView!
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let fileURL = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: fileURL)
            player.prepareToPlay()
        }catch let err as NSError {
            print(err.description)
        }
        
        secBg.isHidden = true
        hustleLbl.isHidden = true
        onLbl.isHidden = true
    }
    
    @IBAction func tappedBtn () {
        mainBG.isHidden = true
        secBg.isHidden = false
        hustlerBtn.isHidden = true
        player.play()
        UIView.animate(withDuration: 15, animations: {
            self.rocket.frame = CGRect(x: 0, y: 60, width: 414, height: 672)
        }){(finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
            
        }
    }


}

