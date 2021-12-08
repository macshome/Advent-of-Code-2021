//
//  Day2Tests.swift
//  Day2Tests
//

import XCTest

class Day2Tests: XCTestCase {
    let sut = Day2()
    let sutInput = """
            forward 5
            down 5
            forward 8
            up 3
            down 8
            forward 2
            """
    
    func testPart1() throws {
        XCTAssertEqual(sut.part1(sutInput) as? Int, 150)
    }
    
    func testPart2() throws {
        XCTAssertEqual(sut.part2(sutInput) as? Int, 900)
    }
    
}
