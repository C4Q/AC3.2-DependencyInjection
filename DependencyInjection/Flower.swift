//
//  Flower.swift
//  DependencyInjection
//
//  Created by Jason Gresh on 5/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class Flower {
    var name: String
    var species: String
    
    init(name: String, species: String) {
        self.name = name
        self.species = species
    }
    
    convenience init(with dict: [String:Any]) {
        let name = dict["name"] as? String ?? "(no name)"
        let species = dict["species"] as? String ?? "(no species)"
        self.init(name: name, species: species)
    }

    static func flowers(from arr:[[String:Any]]) -> [Flower] {
        var flowers:[Flower] = []
        for flowerObj in arr {
            flowers.append(Flower(with: flowerObj))
        }
        return flowers
    }
}
