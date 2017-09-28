//
//  CardSet.swift
//  Card
//
//  Created by Momoko Nakada on 2017-09-14.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import Cocoa

struct CardSet {
    enum Suit:String {
        case Spades = "♠"
        case Hearts = "♥"
        case Diamonds = "♦"
        case Clubs = "♣"
    }
    enum Number: Int {
        case Ace = 1, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Joker
    }

    
    struct Card {
        var suit: Suit
        var number: Number
        var cards:[Card]
        
        func getCards() -> Array<Card> {
            for s in Suit {
                for n in Number {
                    cards += Card(number: n, suit: s)
                }
            }
            return cards
        }
    }
}
