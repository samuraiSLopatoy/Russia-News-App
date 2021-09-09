//
//  Home.swift
//  Russia Science News App
//
//  Created by Миша on 07.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var newsListViewModel = NewsListViewModel()
    
    init() {
        newsListViewModel.getNews(with: "")
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10) {
                
                CategoriesView(newsListViewModel: newsListViewModel)
                    .padding(.top, 10)
                
                NewsListView(newsCollection: self.newsListViewModel.news, imageData: self.newsListViewModel.imageData)
            }
            .navigationBarTitle("Новости", displayMode: .inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
