//
//  Amiibo.swift
//  AmiiboInfo
//
//  Created by Mitchell Budge on 9/3/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

struct AmiiboResult: Codable {
    let amiibo: [Amiibo]
}

struct Amiibo: Codable {
    let name: String
    let image: String
}
