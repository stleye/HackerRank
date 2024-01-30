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

}
