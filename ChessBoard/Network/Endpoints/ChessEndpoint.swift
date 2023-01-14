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
        switch self {
        case .leaderboards:
            return [
                "Content-Type": "application/json"
            ]
        }
    }
    
    var body: Encodable? {
        switch self {
        case .leaderboards:
            return nil
        }
    }
}

