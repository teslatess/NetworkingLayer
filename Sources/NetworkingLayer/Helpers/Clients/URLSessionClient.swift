//
//  URLSessionClient.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public protocol URLSessionClient {
    func perform<T: Decodable>(_ urlRequest: URLRequest, completion: @escaping (Result<T, Error>) -> ())
}
