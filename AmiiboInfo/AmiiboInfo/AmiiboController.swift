//
//  AmiiboController.swift
//  AmiiboInfo
//
//  Created by Mitchell Budge on 9/3/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

class APIController {

var amiibos: [Amiibo] = []

func fetchAmiibos(completion: @escaping (Result<Amiibo, Error>) -> Void) {
    
    let baseURL = URL(string: "https://www.amiiboapi.com/api/amiibo/")!
    
    URLSession.shared.dataTask(with: baseURL) { (data, response, error) in
        
        if let error = error {
            print("Error fetching amiibos \(error)")
            completion(.failure(error))
            return
        }
        
        guard let data = data else {
            completion(.failure(NSError()))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            let amiiboResults = try decoder.decode(AmiiboResult.self, from: data)
            print(amiiboResults)
        } catch {
            NSLog("Error decoding data to type Amiibo: \(error)")
            completion(.failure(error))
        }
        
        }.resume()
}

}
