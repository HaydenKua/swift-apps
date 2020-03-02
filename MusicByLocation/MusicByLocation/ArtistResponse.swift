//
//  ArtistResponse.swift
//  MusicByLocation
//
//  Created by Hayden Kua on 02/03/2020.
//  Copyright © 2020 Hayden Kua. All rights reserved.
//

import Foundation

struct ArtistResponse: Codable {
    var count: Int
    var results: [Artist]
    
    private enum CodingKeys: String, CodingKey {
        case count = "resultCount"
        case results
    }
    
}
