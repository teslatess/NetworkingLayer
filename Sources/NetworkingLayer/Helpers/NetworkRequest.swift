//
//  NetworkRequest.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public protocol NetworkRequest {
    var method: HTTPMethod { get }
    var path: String { get }
    var headers: [String: String] { get }
    var body: Data? { get }
    var queryItems: [URLQueryItem]? { get }
    
    func buildURLRequest() -> URLRequest
}

extension NetworkRequest {
    public var method: HTTPMethod { .GET }
    public var body: Data? { nil }
    
    public func buildURLRequest() -> URLRequest {
        var urlComponents = URLComponents(string: NetworkingConstants.baseURL)!
        urlComponents.queryItems = [
            URLQueryItem(name: "apiKey", value: NetworkingConstants.apiKey)
        ]
        if let queryItems = queryItems {
            urlComponents.queryItems?.append(contentsOf: queryItems)
        }
        let baseURL = urlComponents.url!
        let pathURL = baseURL.appendingPathComponent(path)
        var urlRequest = URLRequest(url: pathURL)
        urlRequest.httpMethod = method.rawValue
        urlRequest.allHTTPHeaderFields = headers
        urlRequest.httpBody = body
        return urlRequest
    }
}
