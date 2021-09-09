//
//  NewsList.swift
//  Russia Science News App
//
//  Created by Миша on 07.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import SwiftUI

struct NewsListView: View {
    
    let newsCollection: [NewsViewModel]
    let imageData: [String: Data]
    
    var body: some View {
        List(self.newsCollection) { news in //news = NewsViewModel
            NewsCellView(news: news, image: Image(uiImage: (self.imageData[news.urlToImage] == nil ?
                UIImage(named: "CatNews") : UIImage(data: self.imageData[news.urlToImage]!)!)!))
        }
    }
}
