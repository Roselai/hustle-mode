//
//  ViewController.swift
//  hustle-mode
//
//  Created by Shukti Shaikh on 5/18/18.
//  Copyright © 2018 SixPinkPetals. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var pwrBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var OnLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")
        let url = URL(fileURLWithPath: path!)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        
    }

    
    @IBAction func pwrBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        pwrBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.OnLbl.isHidden = false
            
        }
    }
    
   
    

}

