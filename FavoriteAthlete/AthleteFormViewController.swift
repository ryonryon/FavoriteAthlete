//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Ryo Togashi on 2019-08-28.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?

    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var ageTextBox: UITextField!
    @IBOutlet weak var leagueTextBox: UITextField!
    @IBOutlet weak var teamTextBox: UITextField!
    
    
    fileprivate func updateUI(_ athlete: Athlete) {
        nameTextBox.text = athlete.name
        ageTextBox.text = String(athlete.age)
        leagueTextBox.text = athlete.league
        teamTextBox.text = athlete.team
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let athlete = athlete {
            updateUI(athlete)
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedSaveButton(_ sender: UIButton) {
        
    }
    
}
