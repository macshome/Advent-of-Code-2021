//
//  Day2.swift
//  AdventOfCode
//

import Foundation
import Algorithms

final class Day2: Day {
    
    
    
    func part1(_ input: String) -> CustomStringConvertible {
        var depth = 0
        var horizontal = 0
        
        input
            .components(separatedBy: .whitespacesAndNewlines)
            .chunks(ofCount: 2)
            .forEach {
                guard let navString = $0.last else { return }
                let navValue = Int(navString) ?? 0
                switch $0.first {
                case "up":
                    depth -= navValue
                case "down":
                    depth += navValue
                case "forward":
                    horizontal += navValue
                default:
                    break
                }
            }
        return depth * horizontal
    }
    
    
    func part2(_ input: String) -> CustomStringConvertible {
        var depth = 0
        var horizontal = 0
        var aim = 0
        
        input
            .components(separatedBy: .whitespacesAndNewlines)
            .chunks(ofCount: 2)
            .forEach {
                guard let navString = $0.last else { return }
                let navValue = Int(navString) ?? 0
                switch $0.first {
                case "up":
                    aim -= navValue
                case "down":
                    aim += navValue
                case "forward":
                    horizontal += navValue
                    depth += navValue * aim
                default:
                    break
                }
            }
        return depth * horizontal
    }
}
