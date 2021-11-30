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
        var highestFrequency = 0
        var mode = 0
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0]
        } else {
            for (_,n) in data.enumerated() {
                if frequencyDict.keys.contains(n) {
                    frequencyDict[n]! += 1
                } else {
                    frequencyDict[n] = 1
                }
            }
            for (key,_) in frequencyDict.enumerated() {
               if let n = Int(key) {
                    if frequencyDict[key] > highestFrequency {
                        mode = key
                        highestFrequency = frequencyDict[key]
                    }
               }
            }
            return mode
        }
    }
}
