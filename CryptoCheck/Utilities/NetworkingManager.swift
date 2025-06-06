//
//  NetworkingManager.swift
//  CryptoCheck
//
//  Created by Liam Mulligan on 5/30/25.
//

import Foundation
import Combine

class NetworkingManager {
    
    enum NetwokingError: LocalizedError {
        
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(url: let url): return "[🔥] Bad response from URL: \(url)"
            case .unknown: return "[⚠️] Unknown error occured"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .tryMap( { try handleUrlResponse(output: $0, url: url) })
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleUrlResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw NetwokingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished: break
        case .failure(let error):
            print(error.localizedDescription)
        }
        
    }
    
}
