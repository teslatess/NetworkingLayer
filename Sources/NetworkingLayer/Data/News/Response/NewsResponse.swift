//
//  NewsResponse.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public struct NewsNetwork {
    public struct Response: Codable {
        public let status: String
        public let totalResults: Int
        public let articles: [Article]
    }
    
    public struct Article: Codable {
        public let source: Source
        public let author: String?
        public let title: String
        public let description: String?
        public let url: String
        public let urlToImage: String?
        public let publishedAt: String
        public let content: String
    }

    public struct Source: Codable {
        public let id: String?
        public let name: String
    }
}
