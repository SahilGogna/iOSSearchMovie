//
//  Movie.swift
//  Favourite-Movie-App
//
//  Created by Sahil Gogna on 2019-02-04.
//  Copyright © 2019 Sahil Gogna. All rights reserved.
//

import Foundation
class Movie{
    var id:String = ""
    var title:String = ""
    var year:String = ""
    var imageUrl:String = ""
    var plot:String = ""
    
    init(id:String, title:String, year:String, imageUrl:String,plot:String = "") {
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
        self.plot = plot
    }
    
    
}
