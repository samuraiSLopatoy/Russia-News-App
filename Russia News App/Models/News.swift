//
//  News.swift
//  Russia Science News App
//
//  Created by Миша on 06.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import Foundation

struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

struct NewsEnvelope: Decodable {
    let status: String?
    let totalResults: Int?
    let articles: [News]
}
