//
//  ChessEndpoint.swift
//  ChessBoard
//
//  Created by Samuel Shearing on 14/1/2023.
//

import Foundation

enum ChessEndpoint {
    case leaderboards
}

extension ChessEndpoint: Endpoint {
    var path: String {
        switch self {
        case .leaderboards:
            return "/pub/leaderboards"
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .leaderboards:
            return .get
        }
    }
    
    var header: [String: String]? {
        // Access Token to use in Bearer header
        switch self {
        case .leaderboards:
            return [
                "Content-Type": "application/json"
            ]
        }
    }
    
    var body: [String: String]? {
        switch self {
        case .leaderboards:
            return nil
        }
    }
}

