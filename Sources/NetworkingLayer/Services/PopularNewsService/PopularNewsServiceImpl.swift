//
//  PopularNewsServiceImpl.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public final class PopularNewsServiceImpl {
    private let apiClient: URLSessionClient
    
    public init(apiClient: URLSessionClient) {
        self.apiClient = apiClient
    }
}

// MARK: - Interface
extension PopularNewsServiceImpl: PopularNewsService {
    public func fetchPopularNews(
        page: Int,
        completion: @escaping (Result<NewsResponse, Error>) -> ()) {
        let request = NewsRequest(
            queryItems: [
                .init(name: "page", value: "\(page)"),
                .init(name: "language", value: "ru"),
                .init(name: "q", value: "Apple"),
                .init(name: "pageSize", value: "20")
            ]
        ).buildURLRequest()
        
        apiClient.perform(request) { (result: Result<NewsResponse, Error>) in
            let response: Result<NewsResponse, Error>
            defer { completion(response) }
            switch result {
                case .success(let newsResponse):
                    response = .success(newsResponse)
                case .failure(let error):
                    response  = .failure(error)
            }
        }
    }
}
