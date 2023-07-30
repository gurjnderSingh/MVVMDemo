//
//  Articles.swift
//  GoodNews
//
//  Created by Gurjinder Singh on 30/07/23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

struct ArticleList: Codable { // Codeable for both Encode and Decoe. we are not sending to server so using Decodable
    let totalResultsOfAPI: Int // Data type should match
    let articlesArr: [Article]
}

struct Article: Codable {
    let title: String
    let description: String
}

extension ArticleList {
    enum CodingKeys: String, CodingKey { // CodingKey not CodingKeys
        case totalResultsOfAPI = "totalResults"
        case articlesArr = "articles"
    }
}

