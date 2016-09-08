//
//  KGNMathTests.swift
//  KGNMathTests
//
//  Created by David Keegan on 9/08/16.
//  Copyright (c) 2016 David Keegan. All rights reserved.
//

import XCTest
@testable import KGNMath

class KGNMathTests: XCTestCase {
    
    func testClamp() {
        XCTAssertEqual(clamp(0, 0, 1), 0)
        XCTAssertEqual(clamp(-10, 0, 1), 0)
        
        XCTAssertEqual(clamp(1, 0, 1), 1)
        XCTAssertEqual(clamp(10, 0, 1), 1)
        
        XCTAssertEqual(clamp(0, 0.1, 0), 0)
        XCTAssertEqual(clamp(-0.01, 0, 0.1), 0)
        
        XCTAssertEqual(clamp(0.1, 0, 0.1), 0.1)
        XCTAssertEqual(clamp(0.01, 0, 0.1), 0.01)
        
        XCTAssertEqual(clamp(3, -5, 8), 3)
        XCTAssertEqual(clamp(10, -5, 8), 8)
        XCTAssertEqual(clamp(-10, -5, 8), -5)
    }
    
    func testMix() {
        XCTAssertEqual(mix(0, 1, 0), 0)
        XCTAssertEqual(mix(0, 1, 0.5), 0.5)
        XCTAssertEqual(mix(0, 1, 1), 1)
        XCTAssertEqual(mix(0, 1, 1.5), 1.5)
        
        XCTAssertEqual(mix(0, 0.1, 0.5), 0.05)
        
        XCTAssertEqualWithAccuracy(mix(-80, 1, 0.2), -63.8, accuracy: 0.01)
    }
    
    func testMod() {
        XCTAssertEqual(mod(1, 1), 0)
        XCTAssertEqual(mod(4.5, 1), 0.5)
        
        XCTAssertEqual(mod(4, 2), 0)
        XCTAssertEqual(mod(5, 2), 1)
        
        XCTAssertEqual(mod(25, 4), 1)
        XCTAssertEqual(mod(25, 5), 0)
        
        XCTAssertEqualWithAccuracy(mod(25.63, 4), 1.63, accuracy: 0.01)
        XCTAssertEqualWithAccuracy(mod(25.32, 5), 0.32, accuracy: 0.01)
    }
    
    func testFract() {
        XCTAssertEqual(fract(0), 0)
        XCTAssertEqual(fract(4.5), 0.5)
        XCTAssertEqual(fract(4), 0)
    }
    
}
