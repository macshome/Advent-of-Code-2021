//
//  Collections.swift
//  AdventOfCode
//
//  Created by Josh Wisenbaker on 12/6/21.
//

import Foundation

extension Collection where Element: Numeric {
    var sum: Element {
        reduce(0, +)
    }
}
