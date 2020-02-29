//
//  ApiService.swift
//  DoujanaApp
//
//  Created by epita on 29/02/2020.
//  Copyright © 2020 fr.epita.doujana.app. All rights reserved.
//

import Foundation


class ApiService{
    let urlString: String = "https://api.deezer.com/album/302130"
    
    
    func fetchAlbums(completionHandler: @escaping(([Album]) -> Void)){
        guard  let url = URL(string : urlString) else{
            
            
            return
        }
        let task = URLSession.shared.dataTask(with: url , completionHandler: {(data , response ,error) in
            if let data = data , let albumResults = try? JSONDecoder().decode(AlbumResults.self,  from: data){
                let array = albumResults.results
                completionHandler(array)
            }
            })
        task.resume()
    }
}
