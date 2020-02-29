//
//  Album.swift
//  DoujanaApp
//
//  Created by epita on 29/02/2020.
//  Copyright © 2020 fr.epita.doujana.app. All rights reserved.
//

import Foundation



class AlbumResults : Codable{
    
    let results: [Album]
}
class Album : Codable{
    
    let id : Int
    let title :String
    let cover_medium : String
    let label : String
    let duration : Int
    let available : String
    let rating : Int
    let release_date : String
    let record_type: String
    let tracklist : String
}
