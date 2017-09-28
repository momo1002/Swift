//
//  ScaryFactor.swift
//  Bugs
//
//  Created by Momoko Nakada on 2017-09-25.
//  Copyright © 2017 Momoko Nakada. All rights reserved.
//

import UIKit

enum ScaryFactor{
    case NotScary, ALittleScary, AverageScary, QuiteScary, Aiiiiieeeee
    
    static let scaryStrings = [
        NotScary : "Not scary",
        ALittleScary : "A little scary",
        AverageScary : "Average scariness",
        QuiteScary : "Quite scary",
        Aiiiiieeeee : "AIIIIIEEEEEEE!!"]
    
    func scaryString() -> String {
        if let scaryString = ScaryFactor.scaryStrings[self] {
            return scaryString
        } else {
            return "scaryString"
        }
    }
}
