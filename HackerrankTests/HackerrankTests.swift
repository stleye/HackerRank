//
//  HackerrankTests.swift
//  HackerrankTests
//
//  Created by Sebastian Tleye on 30/01/2024.
//

import XCTest
@testable import Hackerrank

final class HackerrankTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testElectronicsShop() {
        let electronicShops = ElectronicsShop()

        var result = electronicShops.getMoneySpent(keyboards: [40, 50, 60], drives: [5, 8, 12], b: 60)
        XCTAssertEqual(result, 58)
        
        result = electronicShops.getMoneySpent(keyboards: [40], drives: [50], b: 60)
        XCTAssertEqual(result, -1)
        
        result = electronicShops.getMoneySpent(keyboards: [40], drives: [50], b: 90)
        XCTAssertEqual(result, 90)
    }
    
    func testNumberLineJumps() {
        let numberLineJumps = NumberLineJumps()
        
        var result = numberLineJumps.kangaroo(x1: 2, v1: 1, x2: 1, v2: 2)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 1, x2: 2, v2: 1)
        XCTAssertEqual(result, "NO")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 2, x2: 4, v2: 1)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 2, x2: 5, v2: 1)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 2, x2: 6, v2: 1)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
        XCTAssertEqual(result, "NO")
    }
    
    func testBetweenTwoSets() {
        let betweenToSets = BetweenTwoSets()
        
        var result = betweenToSets.getTotalX(a: [2], b: [1])
        XCTAssertEqual(result, 0)
        
        result = betweenToSets.getTotalX(a: [1], b: [2])
        XCTAssertEqual(result, 2)
        
        result = betweenToSets.getTotalX(a: [2, 4], b: [16, 32, 96])
        XCTAssertEqual(result, 3)
    }
    
    func testSubarrayDivision() {
        let subarrayDivision = SubarrayDivision()
        
        var result = subarrayDivision.birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2)
        XCTAssertEqual(result, 2)
        
        result = subarrayDivision.birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2)
        XCTAssertEqual(result, 0)
        
        result = subarrayDivision.birthday(s: [4], d: 4, m: 1)
        XCTAssertEqual(result, 1)
    }
    
    func testBalancedBrackets() {
        let balancedBrackets = BalancedBrackets()
        
        var result = balancedBrackets.isBalanced(s: "{{[[(())]]}}")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "[(])")
        XCTAssertEqual(result, "NO")
        
        result = balancedBrackets.isBalanced(s: "{}")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "{}()()()[]")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "{[()]}")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "{")
        XCTAssertEqual(result, "NO")
    }
    
    func testMigratoryBirds() {
        let migratoryBirds = MigratoryBirds()
        
        var result = migratoryBirds.migratoryBirds(arr: [1, 4, 4, 4, 5, 3])
        XCTAssertEqual(result, 4)

        result = migratoryBirds.migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
        XCTAssertEqual(result, 3)
        
        result = migratoryBirds.migratoryBirds(arr: [1, 1, 1, 2, 2, 2])
        XCTAssertEqual(result, 1)
        
        result = migratoryBirds.migratoryBirds(arr: [2, 2, 2, 1, 1, 1])
        XCTAssertEqual(result, 1)
    }

    func testDrawingBook() {
        let drawingBook = DrawingBook()

        var result = drawingBook.pageCount(n: 6, p: 2)
        XCTAssertEqual(result, 1)
        
        result = drawingBook.pageCount(n: 1, p: 1)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 2, p: 1)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 2, p: 2)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 3, p: 1)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 3, p: 2)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 3, p: 3)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 5, p: 4)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 5, p: 3)
        XCTAssertEqual(result, 1)
    }
    
    func testQueensAttack2() {
        let queensAttack2 = QueensAttack2()
        let obstacles = [[1, 7], [2, 6], [4, 1], [4, 6], [4, 7], [4, 8], [7, 1], [7, 7], [8, 8], [6, 2], [2, 8]]
        
        var result = queensAttack2.queensAttack(n: 8, k: 8, r_q: 8, c_q: 6, obstacles: obstacles)
        XCTAssertEqual(result, 14)
        
        result = queensAttack2.queensAttack(n: 8, k: 8, r_q: 8, c_q: 7, obstacles: obstacles)
        XCTAssertEqual(result, 13)
        
        result = queensAttack2.queensAttack(n: 8, k: 8, r_q: 7, c_q: 8, obstacles: obstacles)
        XCTAssertEqual(result, 9)
    }
    
    func testExcludingSpecificCharacters() {
        let excludingSpecificCharacters = ExcludingSpecificCharacters()

        XCTAssertTrue(excludingSpecificCharacters.solve(input: "dddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddd."))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddd,"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "0ddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "2ddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "dadddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddDddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddd dd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddAd"))
    }

}
