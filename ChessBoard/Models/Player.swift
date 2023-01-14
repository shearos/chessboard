import Foundation

struct Player: Decodable {
    let playerId: Int
    let username: String
    let score: Int
    let rank: Int
    let country: String
    let title: String?
    let name: String?
    let avatarUrl: String
    let winCount: Int
    let lossCount: Int
    let drawCount: Int
    
    private enum CodingKeys : String, CodingKey {
        case playerId
        case username
        case score
        case rank
        case country
        case title
        case name
        case winCount
        case lossCount
        case drawCount
        case avatarUrl = "avatar"
    }
}
