//
//  Day1.swift
//  AdventOfCode
//

import Foundation
import Algorithms

final class Day1: Day {
    func part1(_ input: String) -> CustomStringConvertible {
        return input
            .components(separatedBy: .newlines)
            .compactMap { Int($0) }
            .adjacentPairs()
            .filter { $0 < $1 }
            .count
    }
    
    
    func part2(_ input: String) -> CustomStringConvertible {
        return input
            .components(separatedBy: .newlines)
            .compactMap { Int($0) }
            .windows(ofCount: 3)
            .adjacentPairs()
            .filter { $0.sum < $1.sum }
            .count
    }
}
