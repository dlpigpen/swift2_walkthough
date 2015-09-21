//
//  FunctionExample.swift
//  xSwift
//
//  Created by Duc Nguyen on 9/21/15.
//  Copyright © 2015 exercism.io. All rights reserved.
//

import Foundation

struct FunctionExample {
    
    //TODO: FILTER
    func filterNormal() -> [Int] {
        var evens = [Int]()
        
        for i in 1...10 {
            if i % 2 == 0 {
                evens.append(i)
            }
        }
        return evens
    }
    
    //--the magic behind filter
    func myFilter<T>(source: [T], predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in source {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
    
    func filterByFunctionFilter() -> [Int] {
        func isEven(number: Int) -> Bool {
            return number % 2 == 0
        }
        /* Other ways
        return Array(1...10).filter { (number) in number % 2 == 0 }
        return Array(1...10).filter { $0 % 2 == 0 }
        return myFilter(Array(1...10)) { $0 % 2 == 0 }
        */
        return Array(1...10).filter(isEven)
    }
    
    
    //TODO: REDUCE
    func reduceNormal() -> Int {
        var evens = [Int]()
        for i in 1...10 {
            if i % 2 == 0 {
                evens.append(i)
            }
        }
        
        var evenSum = 0
        for i in evens {
            evenSum += i
        }
        return evenSum
    }

    func functionalReduce() -> Int {
        return Array(1...10)
            .filter { (number) in number % 2 == 0 }
            .reduce(0) { (total, number) in total + number }
    }
}