//
//  Movie.swift
//  HelloRedux
//
//  Created by Mohammad Azam on 9/9/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation

struct MovieResponse: Decodable {
    
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
    
}

struct Movie: Decodable {
    
    let title: String
    let imdbId: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case imdbId = "imdbID"
    }
    
}
