//
//  NetworkManager.swift
//  Russia Science News App
//
//  Created by Миша on 06.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import Foundation

class NetworkManager {
    
    //request example: https://newsapi.org/v2/top-headlines?country=ru&category=science&apiKey=...
    
    let baseUrlString = "https://newsapi.org/v2/top-headlines?country=ru"
    
    func getNews(category: String, completion: @escaping (([News]?) -> Void)) {
        guard let urlString = URL(string: "\(baseUrlString)\(category)&apiKey=\(API.key)") else { return }
        
        URLSession.shared.dataTask(with: urlString) { (data, response, error) in
            if error == nil, let data = data {
                let newsResults = try? JSONDecoder().decode(NewsEnvelope.self, from: data)
                newsResults == nil ? completion(nil) : completion(newsResults!.articles)
            }
        }
        .resume()
    }
    
    func getImage(urlString: String, completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil, let data = data {
                completion(data)
            }
        }
        .resume()
    }
    
}
