import Foundation

protocol ChessServiceable {
    func getLeaderboards() async -> Result<Leaderboards, RequestError>
}

struct ChessService: HTTPClient, ChessServiceable {
    func getLeaderboards() async -> Result<Leaderboards, RequestError> {
        return await sendRequest(endpoint: ChessEndpoint.leaderboards, responseModel: Leaderboards.self)
    }
}
