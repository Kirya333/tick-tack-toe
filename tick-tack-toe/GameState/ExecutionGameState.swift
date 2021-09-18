//
//  ExecutionGameState.swift
//  tick-tack-toe
//
//  Created by Кирилл Тарасов on 18.09.2021.
//

import Foundation

import UIKit

class ExecutionGameState: GameState {
    var isCompleted: Bool = false
    
    private unowned let gameViewController: GameViewController
    
    init(gameViewController: GameViewController) {
        self.gameViewController = gameViewController
    }
    
    func begin() {
        self.gameViewController.firstPlayerTurnLabel.isHidden = true
        self.gameViewController.secondPlayerTurnLabel.isHidden = true
        
        self.gameViewController.winnerLabel.isHidden = true
        ExecuteInvoker.shared.execute()
    }
    
    func addMark(at position: GameboardPosition) { }
}
