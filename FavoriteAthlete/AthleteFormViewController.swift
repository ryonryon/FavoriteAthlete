//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Ryo Togashi on 2019-08-28.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    var athlete: Athlete?
    var athleteIndex: Int?;

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let prevVC = segue.destination as! AthleteTableViewController
        
        if (athleteIndex == nil) {
            prevVC.athletes.append(Athlete(name: nameTextBox.text!, age: Int(ageTextBox.text!)!, league: leagueTextBox.text!, team: teamTextBox.text!))
        } else {
            prevVC.athletes[athleteIndex!].name = nameTextBox.text!
            prevVC.athletes[athleteIndex!].age = Int(ageTextBox.text!)!
            prevVC.athletes[athleteIndex!].league = leagueTextBox.text!
            prevVC.athletes[athleteIndex!].team = teamTextBox.text!
        }
    }
    
}
