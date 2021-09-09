//
//  ViewToShowWebView.swift
//  Russia Science News App
//
//  Created by Миша on 09.09.2021.
//  Copyright © 2021 samuraiSLopatoy. All rights reserved.
//

import SwiftUI

struct ViewToShowWebView: View {
    
    let newsUrl: String
    
    var body: some View {
        WebView(urlString: newsUrl)
    }
}
