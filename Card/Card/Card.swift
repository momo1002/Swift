//
//  Card.swift
//  Card
//
//  Created by Momoko Nakada on 2017-09-14.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import Cocoa

struct Card {
    enum suit: Int {
        case spades
        case harts
        case clubs
        case diamonds
    }
    
    enum number: Int {
        case Ace = 1, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Joker
    }
    
}
