//
//  Webservice.swift
//  GoodNews
//
//  Created by Gurjinder Singh on 30/07/23.
//

import Foundation

class Webservice {
     
    func getArticles(url: URL, completion: @escaping (([Article]?)->())) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                do {
                    let articles = try? JSONDecoder().decode(ArticleList.self, from: data)
                    if let articles = articles {
                        print(articles.articlesArr)
                    }
                } catch(let error) {
                    print(error.localizedDescription)
                }
            }
        }
        .resume()
    }
}
