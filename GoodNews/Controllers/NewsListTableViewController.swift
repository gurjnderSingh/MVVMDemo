//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Gurjinder Singh on 30/07/23.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

    }
    
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true 
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=9c2fba97ab0548709bd41af17c6fae25")
        Webservice().getArticles(url: url!) { articles in
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections;
    }
    
    
    
}
