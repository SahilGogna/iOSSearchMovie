//
//  MovieDataProcessor.swift
//  Favourite-Movie-App
//
//  Created by Sahil Gogna on 2019-02-04.
//  Copyright © 2019 Sahil Gogna. All rights reserved.
//

import Foundation

class MovieDataProcessor {
    
    static func mapJsonToMovies(object: [String: AnyObject], moviesKey: String) -> [Movie] {
        var mappedMovies: [Movie] = []
        
        //guard is like try catch
        guard let movies = object[moviesKey] as? [[String: AnyObject]] else { return mappedMovies }
        
        for movie in movies {
            guard let id = movie["imdbID"] as? String,
                let name = movie["Title"] as? String,
                let year = movie["Year"] as? String,
                let imageUrl = movie["Poster"] as? String else { continue }
            
            let movieClass = Movie(id: id, title: name, year: year, imageUrl: imageUrl)
            mappedMovies.append(movieClass)
        }
        return mappedMovies
    }
    
    static func write(movies: [Movie]) {
        // TODO: Implement :)
    }
}
