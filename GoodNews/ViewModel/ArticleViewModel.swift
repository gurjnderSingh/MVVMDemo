//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Gurjinder Singh on 30/07/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int)-> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int)-> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String {
        return self.article.title
    }
    var description: String {
        return self.article.description
    }
}
