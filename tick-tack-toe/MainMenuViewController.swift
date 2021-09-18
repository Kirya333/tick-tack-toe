//
//  MainMenuViewController.swift
//  tick-tack-toe
//
//  Created by Кирилл Тарасов on 18.09.2021.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    let pressComputerModeSegueIdentifier = "chooseComputerMode"
    let press2PlayersModeSegueIdentifier = "choose2PlayersMode"

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let gameViewController = segue.destination as? GameViewController else { return }
        
        if segue.identifier == pressComputerModeSegueIdentifier {
            gameViewController.gameMode = .computer
        } else if segue.identifier == press2PlayersModeSegueIdentifier {
            gameViewController.gameMode = .twoPlayers
        }
    }
}
