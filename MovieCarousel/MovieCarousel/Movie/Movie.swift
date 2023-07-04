//
//  Movie.swift
//  MovieCarousel
//
//  Created by Sara Felix on 03/07/23.
//

import UIKit

struct MovieResults: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let id: Int
    var title: String
    var release_date: String
    var poster_path: String?
    var overview: String
    var vote_average: Double
}
