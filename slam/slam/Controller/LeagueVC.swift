//
//  LeagueVC.swift
//  slam
//
//  Created by Sherbaz Hashmi on 23/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player : Player!
   
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player ()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        setDesiredLeague(desiredLeague: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        setDesiredLeague(desiredLeague: "womens")

    }
    
    @IBAction func onCoEdsTapped(_ sender: Any) {
       setDesiredLeague(desiredLeague: "coed")
    }
    
    func setDesiredLeague(desiredLeague : String) {
        player.desiredLeague = desiredLeague
        nextBtn.isEnabled = true;
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
