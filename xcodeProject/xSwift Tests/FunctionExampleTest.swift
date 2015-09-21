//
//  FunctionExampleTest.swift
//  xSwift
//
//  Created by Duc Nguyen on 9/21/15.
//  Copyright © 2015 exercism.io. All rights reserved.
//

import XCTest

class FunctionExampleTest: XCTestCase {
    
    func testFilterNormal() {
        let fExample = FunctionExample()
        let result = fExample.filterNormal()
        
        let expected = [2, 4, 6, 8, 10]
        XCTAssertEqual(expected, result)
    }
}