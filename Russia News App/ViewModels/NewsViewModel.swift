//
//  NewsViewModel.swift
//  Russia Science News App
//
//  Created by Миша on 06.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import Foundation

struct NewsViewModel: Identifiable {
    
    let id = UUID()
    
    let news: News
    
    var author: String {
        news.author ?? "Автор неизвестен"
    }
    
    var title: String {
        news.title ?? ""
    }
    
    var description: String {
        news.description ?? ""
    }
    
    var url: String {
        news.url ?? ""
    }
    
    var urlToImage: String {
        news.urlToImage ?? "https://shutniki.club/wp-content/uploads/2020/04/srochnye-novosti-s-koshkami.jpg"
    }
    
}
