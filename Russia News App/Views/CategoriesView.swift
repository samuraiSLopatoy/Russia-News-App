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
    
    private func categoryButton(title: String, category: String) -> Button<Text> {
        return Button(title) {
            self.newsListViewModel.getNews(with: category)
        }
    }
    
    private func button(title: String, with category: String) -> some View {
        categoryButton(title: title, category: category)
            .padding(5)
            .background(Color.green)
            .cornerRadius(5)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                button(title: "Бизнес", with: Categories.business)
                button(title: "Развлечения", with: Categories.entertainment)
                button(title: "Здоровье", with: Categories.health)
            }
            .padding(.leading)
            .foregroundColor(.white)
            
            HStack {
                button(title: "Наука", with: Categories.science)
                button(title: "Спорт", with: Categories.sports)
                button(title: "Технологии", with: Categories.technology)
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
