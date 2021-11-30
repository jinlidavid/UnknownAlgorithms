//
//  UnknownTest.swift
//  UnknownTest
//
//  Created by Jin Li, David (MAG) on 30/11/2021.
//

import XCTest

class UnknownTest: XCTestCase {
    let testAlgorithm = UnknownAlgorithm()
    let testCases = [(input: [3,54,12,6,34,7,65,11,31,78], expected: 81),
                     (input: [3], expected: 6),
                     (input: [], expected: 0)]
    
    func testSumOfFirstAndLastItemsForAllVariations() {
        for testCase in testCases {
            let actual = testAlgorithm.findSum(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
    
    func testFindModeOfArrayForAllVariations() {
        for testCase in testCases {
            let actual = testAlgorithm.findMode(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
}
