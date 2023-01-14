import Foundation

protocol ChessServiceable {
    func getLeaderboards() async throws -> Leaderboards
}

struct ChessService: HTTPClient, ChessServiceable {
    func getLeaderboards() async throws -> Leaderboards {
        return try await sendRequest(endpoint: ChessEndpoint.leaderboards, responseModel: Leaderboards.self)
    }
}
