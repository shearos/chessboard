import XCTest
@testable import ChessBoard

final class ChessBoardTests: XCTestCase {
    
    private var chessServiceMock: ChessServiceable!
    
    override func setUpWithError() throws {
        chessServiceMock = ChessServiceMock()
    }
    
    override func tearDownWithError() throws {
        chessServiceMock = nil
    }
    
    func testLeaderboards() async throws {
        let leaderboards = try await chessServiceMock.getLeaderboards()
        
        let rankOne = leaderboards.daily[0]
        
        XCTAssertEqual(rankOne.rank, 1)
        XCTAssertEqual(rankOne.name, "Igor Kovalenko")
        XCTAssertEqual(rankOne.playerId, 19872960)
        XCTAssertEqual(rankOne.avatarUrl, "https://images.chesscomfiles.com/uploads/v1/user/19872960.df6ef125.200x200o.f2651789b1f6.jpeg")
    }
    
    func testTitleNameOptional() async throws {
        let leaderboards = try await chessServiceMock.getLeaderboards()
        
        let rankFifty = leaderboards.daily[49]
        
        XCTAssertNil(rankFifty.name)
        XCTAssertNil(rankFifty.title)
    }
}

final class ChessServiceMock: Mockable, ChessServiceable {
    func getLeaderboards() async throws -> Leaderboards {
        return loadJSON(filename: "leaderboards_response", type: Leaderboards.self)
    }
}
