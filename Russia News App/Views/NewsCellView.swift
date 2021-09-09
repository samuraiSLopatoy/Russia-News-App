//
//  NewsCell.swift
//  Russia Science News App
//
//  Created by Миша on 07.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import SwiftUI

struct NewsCellView: View {
    
    let news: NewsViewModel
    let image: Image
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationLink(destination: ViewToShowWebView(newsUrl: news.url), isActive: $isPresented) {
            VStack(alignment: .leading, spacing: 10) {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 30, height: 200)
                    .clipped()
                    .cornerRadius(5)
                    .shadow(color: .black, radius: 5, x: 5, y: 5)
                
                Text(news.author)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.gray)
                    .cornerRadius(5)
                
                Text(news.title)
                    .font(.subheadline)
                
                Text(news.description)
                    .font(.caption)
            }
            .onTapGesture {
                self.isPresented.toggle()
            }
        }
    }
}


