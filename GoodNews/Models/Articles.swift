//
//  Articles.swift
//  GoodNews
//
//  Created by Gurjinder Singh on 30/07/23.
//

import Foundation

struct ArticleList: Decodable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}

struct Article: Decodable {
    let author: String?
    let title: String?
    let description: String?
}


