//
//  Continent.swift
//  TableViewDemo2
//
//  Created by Derrick on 2017-09-26.
//  Copyright © 2017 com.Derrick. All rights reserved.
//

import UIKit

struct Continent {
    var name: String
    var countries: [Country]
}

struct SetContinent {
    static func setAsia() -> Continent {
        var asianCountries = [Country]()
        
        asianCountries.append(Country(name: "China", population: 6000000))
        asianCountries.append(Country(name: "Japan", population: 2000000))
        asianCountries.append(Country(name: "Korea", population: 1000000))
        asianCountries.append(Country(name: "Taiwan", population: 1000000))
        asianCountries.append(Country(name: "Vietnam", population: 1000000))
        let asia = Continent(name: "Asia", countries: asianCountries)
        return asia
    }
    
    static func setEurope() -> Continent {
        var europeCountries = [Country]()
        
        europeCountries.append(Country(name: "Germany", population: 6000000))
        europeCountries.append(Country(name: "Poland", population: 2000000))
        europeCountries.append(Country(name: "England", population: 1000000))
        europeCountries.append(Country(name: "France", population: 1000000))
        europeCountries.append(Country(name: "Italy", population: 1000000))
        let europe = Continent(name: "Europe", countries: europeCountries)
        return europe
    }
    
    static func setNorthAmerica() -> Continent {
        var naCountries = [Country]()
        
        naCountries.append(Country(name: "USA", population: 6000000))
        naCountries.append(Country(name: "Canada", population: 2000000))
        let na = Continent(name: "North America", countries: naCountries)
        return na
    }
    
    static func setSouthAmerica() -> Continent {
        var saCountries = [Country]()
        
        saCountries.append(Country(name: "Mexico", population: 6000000))
        saCountries.append(Country(name: "Brazil", population: 2000000))
        saCountries.append(Country(name: "Chile", population: 2000000))
        saCountries.append(Country(name: "Argentina", population: 2000000))
        saCountries.append(Country(name: "Columbia", population: 2000000))
        let sa = Continent(name: "South America", countries: saCountries)
        return sa
    }
    
    static func setAfrica() -> Continent {
        var africaCountries = [Country]()
        
        africaCountries.append(Country(name: "Nigeria", population: 6000000))
        africaCountries.append(Country(name: "Kongo", population: 2000000))
        africaCountries.append(Country(name: "South Africa", population: 2000000))
        africaCountries.append(Country(name: "Cameroon", population: 2000000))
        africaCountries.append(Country(name: "Ethiopia", population: 2000000))
        let africa = Continent(name: "Africa", countries: africaCountries)
        
        return africa
    }
    
    static func continentSets() -> [Continent] {
        return [setAsia(), setAfrica(), setEurope(), setNorthAmerica(), setSouthAmerica()]
    }
}
