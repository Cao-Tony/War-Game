//
//  ViewController.swift
//  War_Game
//
//  Created by Tony Cao on 4/10/20.
//  Copyright © 2020 Tony Cao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // reference to the cards and scores
   @IBOutlet weak var Left_Card: UIImageView!
   @IBOutlet weak var Right_Card: UIImageView!
   @IBOutlet weak var Player1_Score: UILabel!
   @IBOutlet weak var CPU_Score: UILabel!

   var players_score = 0
   var cpu_score = 0
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
   // when deal buttom is tapped
   @IBAction func DealTapped(_ sender: Any) {
      let Leftnum = Int.random(in: 2...14)
      let Rightnum = Int.random(in: 2...14)
      
      // update the images of the 2 cards
      Left_Card.image = UIImage(named: "card\(Leftnum)")
      Right_Card.image = UIImage(named: "card\(Rightnum)")
      
      // update the scores
      if Leftnum > Rightnum {
         players_score += 1
         Player1_Score.text = String(players_score)
      } else {
         cpu_score += 1
         CPU_Score.text = String(cpu_score)
      }
   }
}

