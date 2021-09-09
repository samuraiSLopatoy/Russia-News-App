//
//  CategoriesView.swift
//  Russia Science News App
//
//  Created by Миша on 09.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    
    let newsListViewModel: NewsListViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Button("Бизнес") {
                    self.newsListViewModel.getNews(with: Categories.business)
                }
                .padding(5)
                .background(Color.green)
                .cornerRadius(5)
                
                
                Button("Развлечения") {
                    self.newsListViewModel.getNews(with: Categories.entertainment)
                }
                .padding(5)
                .background(Color.green)
                .cornerRadius(5)
                
                Button("Здоровье") {
                    self.newsListViewModel.getNews(with: Categories.health)
                }
                .padding(5)
                .background(Color.green)
                .cornerRadius(5)
            }
            .padding(.leading)
            .foregroundColor(.white)
            
            HStack {
                Button("Наука") {
                    self.newsListViewModel.getNews(with: Categories.science)
                }
                .padding(5)
                .background(Color.green)
                .cornerRadius(5)
                
                Button("Спорт") {
                    self.newsListViewModel.getNews(with: Categories.sports)
                }
                .padding(5)
                .background(Color.green)
                .cornerRadius(5)
                
                Button("Технологии") {
                    self.newsListViewModel.getNews(with: Categories.technology)
                }
                .padding(5)
                .background(Color.green)
                .cornerRadius(5)
            }
            .padding(.leading)
            .foregroundColor(.white)
        }
        
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView(newsListViewModel: NewsListViewModel())
    }
}
