//
//  NetworkManager.swift
//  Jetruby
//
//  Created by wtildestar on 13/04/2020.
//  Copyright © 2020 wtildestar. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private init() {}
    
    let apiKey = "b045a62bc41d4851b74b1da3867e17c2"
    
    func getNews(_ urlPath: String, completed: @escaping (Result<[News], JError>) -> Void) {
        let endpoint = "https://newsapi.org/v2/top-headlines?country=ru&apiKey=\(apiKey)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUrl))
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let news = try decoder.decode([News].self, from: data)
                completed(.success(news))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
    
}
