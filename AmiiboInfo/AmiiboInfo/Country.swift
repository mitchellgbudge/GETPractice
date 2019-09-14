//
//  Country.swift
//  AmiiboInfo
//
//  Created by Mitchell Budge on 9/10/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

struct Country: Decodable {
    let name: String
    let capital: String
    let altSpellings: [String]
    let population: Int
    let timezones: [String]
    let currencies: [Currency]
    let languages: [Language]
    let flag: URL
}

struct Currency: Decodable {
    let name: String
}

struct Language: Decodable {
    let name: String
}
