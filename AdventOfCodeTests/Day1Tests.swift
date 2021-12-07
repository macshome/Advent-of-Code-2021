//
//  Day1Tests.swift
//  Day1Tests
//

import XCTest

class Day1Tests: XCTestCase {
    let sut = Day1()
    let sutInput = """
                199
                200
                208
                210
                200
                207
                240
                269
                260
                263
                """
    
    func testPart1() throws {
        XCTAssertEqual(sut.part1(sutInput) as? Int, 7)
    }

    func testPart2() throws {
        XCTAssertEqual(sut.part2(sutInput) as? Int, 5)
    }

}
