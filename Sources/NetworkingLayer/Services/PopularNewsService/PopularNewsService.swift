//
//  PopularNewsService.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public protocol PopularNewsService {
    typealias NewsResponse = NewsNetwork.Response
    
    func fetchPopularNews(page: Int, completion: @escaping (Result<NewsResponse, Error>) -> ())
}
