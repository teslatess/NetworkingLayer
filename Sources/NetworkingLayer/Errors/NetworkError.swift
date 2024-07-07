//
//  NetworkError.swift
//  SPMTemplate
//
//  Created by tteslatess on 06.07.2024.
//

import Foundation

public enum NetworkError: Error {
    case noData
    case networkError
    case invalidAPIKey
}

extension NetworkError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .noData:
            return NSLocalizedString(
                "The resource you requested could not be found.",
                comment: "No Data"
            )
        case .networkError:
            return NSLocalizedString(
                "Generic Network Error.",
                comment: "Network Error"
            )
        case .invalidAPIKey:
            return NSLocalizedString(
                "Invalid API key: You must be granted a valid key.",
                comment: "Invalid API Key"
            )
        }
    }
}
