//
//  UnknownAlgorithm.swift
//  UnknownAlgorithms
//
//  Created by Jin Li, David (MAG) on 30/11/2021.
//

import Foundation

class UnknownAlgorithm {
    
    func findSum(_ data: [Int]) -> Int {
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0] * 2
        } else {
            return data[0] + data[data.count-1]
        }
    }
    
    func findMode(_ data: [Int]) -> Int {
        var frequencyDict = [Int:Int]()
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0]
        } else {
            for (_,n) in data.enumerated() {
                if frequencyDict.keys.contains(n) {
                    frequencyDict[n] +=1 
                }
            }
            return 0
        }
    }
}
