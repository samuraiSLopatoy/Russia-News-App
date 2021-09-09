//
//  NewsListViewModel.swift
//  Russia Science News App
//
//  Created by Миша on 06.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import Foundation

class NewsListViewModel: ObservableObject {
    
    @Published var news = [NewsViewModel]()
    @Published var imageData = [String: Data]()
    
    let networkManager = NetworkManager()
    
    func getNews(with category: String) {
        networkManager.getNews(category: category) { (articles) in //articles = [News]
            if let news = articles {
                // transform news = [News] from NetworkManager into [NewsViewModel]
                let newsViewModel = news.map(NewsViewModel.init)
                self.getImages(for: newsViewModel)
                DispatchQueue.main.async {
                    self.news = newsViewModel
                }
            }
        }
    }
    
    private func getImages(for news: [NewsViewModel]) {
        //go through each news article, get image data, populate imageData dictionary
        news.forEach { (article) in //article = NewsViewModel
            networkManager.getImage(urlString: article.urlToImage) { (data) in
                DispatchQueue.main.async {
                    self.imageData[article.urlToImage] = data
                }
            }
        }
    }
    
}
