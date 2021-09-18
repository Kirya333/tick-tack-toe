//
//  Player.swift
//  tick-tack-toe
//
//  Created by Кирилл Тарасов on 18.09.2021.
//

import Foundation


public enum Player: CaseIterable {
    case first
    case second
    
    var next: Player {
        switch self {
        case .first:
            return .second
        case .second:
            return .first
        }
    }
    
    var markViewPrototype: MarkView {
        switch self {
        case .first:
            return XView()
        case .second:
            return OView()
        }
    }
}
