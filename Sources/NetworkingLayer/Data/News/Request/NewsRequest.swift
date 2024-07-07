//
//  NewsRequest.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public struct NewsRequest: NetworkRequest {
    public var path: String { NetworkingConstants.everythingNews }
    public var headers: [String : String] = [:]
    public var queryItems: [URLQueryItem]?
}
